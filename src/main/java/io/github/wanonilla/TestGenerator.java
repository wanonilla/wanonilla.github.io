package io.github.wanonilla;

import io.github.alisianoi.WParser;
import io.github.alisianoi.parser.stream.WStream;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import picocli.CommandLine;
import wien.secpriv.horst.data.Proposition;
import wien.secpriv.horst.data.Rule;
import wien.secpriv.horst.execution.PreprocessingStrategy;
import wien.secpriv.horst.internals.SelectorFunctionHelper;
import wien.secpriv.horst.internals.error.handling.ExceptionThrowingErrorHandlerWithLocation;
import wien.secpriv.horst.tools.HorstFileParser;
import wien.secpriv.horst.tools.PredicateHelper;
import wien.secpriv.horst.tools.SmtLibGenerator;
import wien.secpriv.horst.translation.PredicateInliningStrategy;
import wien.secpriv.horst.translation.PruneStrategy;
import wien.secpriv.horst.translation.StandardZ3TranslationPipeline;
import wien.secpriv.horst.translation.TranslationPipeline;
import wien.secpriv.horst.translation.external.SmtLibTheory;
import wien.secpriv.horst.translation.visitors.TranslateToSmtLibVisitorState;
import wien.secpriv.horst.visitors.VisitorState;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.function.BiConsumer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;

enum AttackerFixity {UNIVERSAL, FIXED};

enum Attacker {SU, PU, ST, PT};

public class TestGenerator implements Runnable {
    public static final SmtLibTheory externalTheory = new BitVectorTheory();

    @CommandLine.Option(names = {"--filter"}, description = "do not generate smt-lib files for all modules in the given directory but only the one given here", arity = "*")
    private List<String> filteredTests = new ArrayList<>();

    @CommandLine.Option(names = {"--smt-out-dir"}, description = "directory files to which smt are written", defaultValue = ".")
    private String smtOutDir;

    @CommandLine.Option(names = {"--test-in-dir"}, description = "directory files test cases are read from ", defaultValue = ".")
    private String testInDir;

    @CommandLine.Option(names = {"--fixed-attackers"}, description = "generate queries only for given attackers (if empty, attackers will be universally quantified)", arity = "*")
    private List<Attacker> fixedAttackers = new ArrayList<>();

    // @CommandLine.Option(names = {"--join-entry-points"}, description = "generate one smt file that runs all tests specified in a json file at once (throws an exception if the test files are incompatible (by, e.g., assigning different labels to the parameters of one function)", defaultValue = "false")
    // private boolean joinEntryPoints;

    static void parseImpreciseLvaluePredicateMemorySemantics(VisitorState state, AttackerFixity attackerFixity) {
        switch (attackerFixity) {
            case UNIVERSAL -> HorstFileParser.parseAllHorstFiles(state, WasmNoninterferenceSemanticsLValuePredicateMemory.getSemanticsForFunctionTests(WasmNoninterferenceSemanticsLValuePredicateMemory.Precision.IMPRECISE));
            case FIXED -> HorstFileParser.parseAllHorstFiles(state, WasmNoninterferenceSemanticsLValuePredicateMemoryFixedAttacker.getSemanticsForFunctionTests(WasmNoninterferenceSemanticsLValuePredicateMemory.Precision.IMPRECISE));
        }
    }

    public static Pattern DIGITS = Pattern.compile("^(\\d+)(.*)");

    private static List<List<String>> testFiles(String dir) {
        return readTestFileDirectories(dir).sorted(new Comparator<String>() {
            @Override
            public int compare(String a, String b) {
                a = a.substring(1 + a.lastIndexOf("/"));
                b = b.substring(1 + b.lastIndexOf("/"));

                Matcher ma = DIGITS.matcher(a);
                Matcher mb = DIGITS.matcher(b);

                boolean fa = ma.matches();
                boolean fb = mb.matches();

                if (fa && fb) {
                    int ia = Integer.parseInt(ma.group(1));
                    int ib = Integer.parseInt(mb.group(1));

                    return Integer.compare(ia, ib);
                }

                if (fa) {
                    return 1;
                }

                if (fb) {
                    return -1;
                }

                return a.compareTo(b);
            }
        }).map(s -> List.of(s + ".wasm", s + ".json")).collect(Collectors.toList());
    }

    public static void main(String[] args) {
        CommandLine.run(new TestGenerator(), args);
    }

    public void run() {
        Set<String> filteredTests = new HashSet<>(this.filteredTests);
        configureLoggers();
        generateSmtForFunction(this.testInDir, this.smtOutDir, filteredTests, fixedAttackers);
    }

    private void configureLoggers() {
        Logger.getRootLogger().setLevel(Level.OFF);
    }

    private static Stream<String> readTestFileDirectories(String... directories) {
        final String INTERESTING_SUFFIX = ".json";

        Set<String> testFiles = new HashSet<>();

        for (String directory : directories) {
            for (var f : Objects.requireNonNull((new File(directory)).listFiles())) {
                var line = f.getName();
                if (line.endsWith(INTERESTING_SUFFIX)) {
                    testFiles.add(directory + File.separator + line.substring(0, line.length() - INTERESTING_SUFFIX.length()));
                }
            }
        }
        return testFiles.stream().sorted();
    }

    /*
    public static <T> T check(T currentValue, T nextValue, String name, BigInteger id) {
        if(currentValue == null) {
            return nextValue;
        }
        if(!currentValue.equals(nextValue)) {
            throw new IllegalArgumentException("Test case " + id + " specifies " + name + " " + nextValue + " but some preceding test specifies " + currentValue + "!");
        }
        return currentValue;
    }
    */

    public static void generateSmtForFunction(String inDir, String outDir, Set<String> filteredTests, List<Attacker> fixedAttackers) {
        Map<String, BiConsumer<VisitorState, AttackerFixity>> semantics = new HashMap<>();
        semantics.put("lvalue-predicate-memory (imprecise)", TestGenerator::parseImpreciseLvaluePredicateMemorySemantics); // Main development semantics

        for (var e : semantics.entrySet()) {
            for (var as : testFiles(inDir)) {
                try {
                    String path = as.get(0);
                    String jsonPath = as.get(1);
                    String filename = Paths.get(path).getFileName().toString();
                    String testId = filename.substring(0, filename.lastIndexOf('.'));

                    if (filteredTests.contains(testId) || filteredTests.isEmpty()) {
                        System.out.println(testId);
                    } else {
                        continue;
                    }

                    var module = new WParser().parse(load("", path));
                    var wasmSelectorFunctionProvider = new WasmNoninterferenceSelectorFunctionProvider(module);
                    wasmSelectorFunctionProvider.havocMemoryIfGiven();
                    var tests = SpecificationParser.fromJson(openResourceStream("", jsonPath)).toList();

                    /*
                    if (joinEntryPoints) {
                        Set<String> functionNames = new HashSet<>();
                        Set<BigInteger> functionIds = new HashSet<>();
                        String sensitivity = null;
                        TestSpecification.MemorySpecification memory_in = null;
                        TestSpecification.MemorySpecification memory_out = null;
                        String table_in = null;
                        String table_out = null;
                        Map<TestSpecification.FunctionIdentifier, List<String>> param;

                        for (var test : tests) {
                            if(test.function_name != null) {
                                functionNames.add(test.function_name);
                            }
                            if(test.function_id != null) {
                                functionIds.add(test.function_id);
                            }

                            sensitivity = check(sensitivity, test.sensitivity, "sensitivity", test.test_id);
                            memory_in = check(memory_in, test.memory_in, "memory_in", test.test_id);
                            memory_out = check(memory_out, test.memory_out, "memory_out", test.test_id);
                            table_in = check(table_in, test.table_in, "table_in", test.test_id);
                            table_out = check(table_out, test.table_out, "table_out", test.test_id);
                        }

                    }*/

                    AttackerFixity attackerMode = AttackerFixity.UNIVERSAL;
                    if (!fixedAttackers.isEmpty()) {
                        attackerMode = AttackerFixity.FIXED;
                    }

                    for (var test : tests) {
                        String attackerModeSuffix = "";

                        if(attackerMode == AttackerFixity.FIXED) {
                            attackerModeSuffix = '-' + String.join("_", fixedAttackers.stream().map(Enum::toString).collect(Collectors.toSet()));
                        }

                        System.out.println("Generating test " + test.test_id + attackerModeSuffix);

                        var wasmTestSelectorFunctionProvider = WasmNoninterferenceTestSelectorFunctionProvider.initWithChecks(test, module);
                        wasmTestSelectorFunctionProvider.setFixedAttackers(fixedAttackers);

                        VisitorState state = new VisitorState();
                        state.errorHandler = new ExceptionThrowingErrorHandlerWithLocation(state.spans);
                        SelectorFunctionHelper selectorFunctionHelper = new SelectorFunctionHelper();
                        selectorFunctionHelper.registerProvider(wasmSelectorFunctionProvider);
                        selectorFunctionHelper.registerProvider(wasmTestSelectorFunctionProvider);
                        state.setSelectorFunctionHelper(selectorFunctionHelper);

                        if (test.sensitivity.equals("tsni")) {
                            System.out.println("tsni test skipped");
                            continue;
                        }

                        e.getValue().accept(state, attackerMode);

                        TranslationPipeline pipeline = StandardZ3TranslationPipeline.get(state, selectorFunctionHelper, externalTheory);
                        List<Rule> rules = pipeline.apply(new ArrayList<>(state.getRules().values()));
                        Set<Proposition.PredicateProposition> originalQueries = rules.stream().flatMap(r -> r.clauses.stream()).map(c -> c.conclusion).filter(PredicateHelper::isQueryOrTest).collect(Collectors.toSet());

                        rules = (new PreprocessingStrategy.ApplyMediumStepTransformationPreprocessingStrategy(PruneStrategy.Enum.aggressive.strategy,
                                PredicateInliningStrategy.Enum.linear.strategy, externalTheory.getConstantFoldingTranslator(state))).preprocess(rules, originalQueries).get();

                        rules = (new NonQuerySpecificFreeVarResolutionStrategy()).preprocess(rules, originalQueries).get();

                        var params = Map.of("rlimit", "700000000", "fp.engine", "spacer");
                        TranslateToSmtLibVisitorState translationState = new TranslateToSmtLibVisitorState(params, externalTheory);


                        if(attackerMode == AttackerFixity.FIXED) {
                            attackerModeSuffix = '-' + String.join("_", fixedAttackers.stream().map(Enum::toString).collect(Collectors.toSet()));
                        }

                        var outFileName = Path.of(outDir, testId + "-" + test.test_id + attackerModeSuffix + ".smt");
                        new File(String.valueOf(outFileName.getParent())).mkdirs();

                        SmtLibGenerator.writeSmtLibToFile(outFileName.toString(), rules, originalQueries, translationState);
                    }
                } catch (Exception ex) {
                    throw new RuntimeException(ex);
                }
            }
        }
    }


    private static WStream load(String dirName, String fileName) {
        return new WStream(openResourceStream(dirName, fileName));
    }

    private static InputStream openResourceStream(String dirName, String fileName) {
        final String name = Paths.get(dirName, fileName).toString();

        try {
            return new FileInputStream(name);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
