package io.github.wanonilla;

import io.github.alisianoi.WParser;
import io.github.alisianoi.parser.stream.WStream;
import wien.secpriv.horst.data.Proposition;
import wien.secpriv.horst.data.Rule;
import wien.secpriv.horst.execution.*;
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
import wien.secpriv.horst.visitors.CachedReadableOperationsScope;
import wien.secpriv.horst.visitors.VisitorState;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.*;
import java.util.function.BiConsumer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class TestRunner {

    public static final SmtLibTheory externalTheory = new BitVectorTheory();

    static void parseImpreciseLvaluePredicateMemorySemantics(VisitorState state, String sensitivity) {
        if (sensitivity.equals("tsni")) {
            HorstFileParser.parseAllHorstFiles(state, WasmNoninterferenceSemanticsLValuePredicateMemory.getSemanticsForTerminationSensitiveFunctionTests(WasmNoninterferenceSemanticsLValuePredicateMemory.Precision.IMPRECISE));
        } else {
            HorstFileParser.parseAllHorstFiles(state, WasmNoninterferenceSemanticsLValuePredicateMemory.getSemanticsForFunctionTests(WasmNoninterferenceSemanticsLValuePredicateMemory.Precision.IMPRECISE));
        }
    }

    public static Pattern DIGITS = Pattern.compile("^(\\d+)(.*)");

    private static List<List<String>> testFiles(String dir) {
        //return readTestFileDirectories("examples", "basic", "complex", "zzz_from_others", "zzz_from_others/emcc", "zzz_from_others/clang", "termination-sensitive", "rapid", "rapid/clang", "debug", "debug/rapid", "debug/zzz_from_others", "integrity", "figures")
        //        .map(s -> List.of(s + ".wasm", s + ".json")).collect(Collectors.toList());
        return readTestFileDirectories(dir).sorted(new Comparator<String>() {
            @Override
            public int compare(String a, String b) {
                a = a.substring(1 + a.lastIndexOf("/"));
                b = b.substring(1 + b.lastIndexOf("/"));

//                System.out.println("a = " + a);
//                System.out.println("b = " + b);

                Matcher ma =  DIGITS.matcher(a);
                Matcher mb =  DIGITS.matcher(b);

                boolean fa = ma.matches();
                boolean fb = mb.matches();

                if (fa && fb) {
                    int ia = Integer.parseInt(ma.group(1));
                    int ib = Integer.parseInt(mb.group(1));

//                    System.out.println("HALLO " + ia);
//                    System.out.println("BALLO " + ib);

                    return Integer.compare(ia, ib);
                }

                if(fa) {
                    return 1;
                }

                if(fb) {
                    return -1;
                }

                return a.compareTo(b);
            }
        }).map(s -> List.of(s + ".wasm", s + ".json")).collect(Collectors.toList());
    }

    public static void main(String[] args) {
        var map = validateFunction(args[0]);
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

    public static Map<String, List<ExecutionResult.TestResult>> validateFunction(String dir) {
        Map<String, BiConsumer<VisitorState, String>> semantics = new HashMap<>();
        semantics.put("lvalue-predicate-memory (imprecise)", TestRunner::parseImpreciseLvaluePredicateMemorySemantics); // Main development semantics

        Map<String, List<ExecutionResult.TestResult>> ret = new HashMap<>();

        for (var e : semantics.entrySet()) {
            for (var as : testFiles(dir)) {
                try {
                    String path = as.get(0);
                    String jsonPath = as.get(1);
                    String testId = path.substring(0, path.lastIndexOf('.'));

                    var module = new WParser().parse(load("", path));
                    var wasmSelectorFunctionProvider = new WasmNoninterferenceSelectorFunctionProvider(module);
                    var tests = SpecificationParser.fromJson(openResourceStream("", jsonPath));


                    System.out.println(testId);

                    ret.put(testId, new ArrayList<>());

                    for (var test : tests.collect(Collectors.toList())) {
                        var wasmTestSelectorFunctionProvider = WasmNoninterferenceTestSelectorFunctionProvider.initWithChecks(test, module);

                        VisitorState state = new VisitorState();
                        state.errorHandler = new ExceptionThrowingErrorHandlerWithLocation(state.spans);
                        SelectorFunctionHelper selectorFunctionHelper = new SelectorFunctionHelper();
                        selectorFunctionHelper.registerProvider(wasmSelectorFunctionProvider);
                        selectorFunctionHelper.registerProvider(wasmTestSelectorFunctionProvider);
                        state.setSelectorFunctionHelper(selectorFunctionHelper);

                        e.getValue().accept(state, test.sensitivity);

                        TranslationPipeline pipeline = StandardZ3TranslationPipeline.get(state, selectorFunctionHelper, externalTheory);
                        List<Rule> rules = pipeline.apply(new ArrayList<>(state.getRules().values()));
                        Set<Proposition.PredicateProposition> originalQueries = rules.stream().flatMap(r -> r.clauses.stream()).map(c -> c.conclusion).filter(PredicateHelper::isQueryOrTest).collect(Collectors.toSet());

                        List<QuerySpecificPreprocessingStrategy> querySpecificPreprocessingStrategies = List.of(
                                new QuerySpecificPreprocessingStrategy.ApplyMediumStepTransformationPreprocessingStrategy(
                                        PruneStrategy.Enum.aggressive.strategy,
                                        PredicateInliningStrategy.Enum.linear.strategy,
                                        externalTheory.getConstantFoldingTranslator(new CachedReadableOperationsScope(state.getOperations()))
                                ),
                                new FreeVarResolutionStrategy()
                        );

                        QueryExecutor executor = new SmtGeneratingZ3QueryExecutor(params -> new TranslateToSmtLibVisitorState(params, externalTheory),
                                Map.of("rlimit", "700000000", "fp.engine", "spacer"),
                                rules, ExecutionStrategy.Enum.all.getStrategy(),
                                querySpecificPreprocessingStrategies);

                        for (var query : originalQueries.stream().sorted(Comparator.comparing(q -> q.predicate.name)).toList()) {
//                            System.out.println("[%s] %s".formatted(test.sensitivity, query.predicate.name));
                            ExecutionResult executionResult = executor.executeQuery(query);
                            if (executionResult instanceof ExecutionResult.TestResult testResult) {
                                ret.get(testId).add(testResult);
                            } else {
                                System.out.println("QUERY NOT TEST");
                            }
                        }
                    }
                } catch (Exception ex) {
                    throw new RuntimeException(ex);
                }
            }
        }
        return ret;
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
