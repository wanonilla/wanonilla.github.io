package io.github.wanonilla;

import io.github.alisianoi.expert.model.WViewFunction;
import io.github.alisianoi.expert.wexpert.WEFunction;
import io.github.alisianoi.expert.wexpert.WEImport;
import io.github.alisianoi.parser.model.WModule;
import wien.secpriv.horst.data.tuples.Tuple2;
import wien.secpriv.horst.data.tuples.Tuple3;
import wien.secpriv.horst.data.tuples.Tuple4;

import java.math.BigInteger;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class WasmNoninterferenceTestSelectorFunctionProvider {
    BigInteger functionId;
    String functionName;
    BigInteger testId;

    private final Map<String, BigInteger> functionNamesToSubstitutes = new HashMap<>();
    private final Map<BigInteger, String> substitutesToFunctionNames = new HashMap<>();

    private final List<Tuple2<Boolean, Boolean>> arguments;
    private final List<Tuple2<Boolean, Boolean>> globalsIn;
    private final Tuple2<Boolean, Boolean> memoryDataIn;
    private final Tuple2<Boolean, Boolean> memorySizeIn;
    private final List<Tuple4<BigInteger, BigInteger, Boolean, Boolean>> memoryDataInExceptions;

    private final Tuple2<Boolean, Boolean> tableIn;
    private final List<Tuple2<Boolean, Boolean>> results;
    private final List<Tuple2<Boolean, Boolean>> globalsOut;
    private final Tuple2<Boolean, Boolean> memoryDataOut;
    private final Tuple2<Boolean, Boolean> memorySizeOut;
    private final Tuple2<Boolean, Boolean> tableOut;
    private final Map<String, Boolean> queries;
    private final Map<BigInteger, List<Tuple2<Boolean, Boolean>>> importFunctionArguments = new HashMap<>();
    private final Map<BigInteger, List<Tuple2<Boolean, Boolean>>> importFunctionResults = new HashMap<>();
    private final Map<BigInteger, List<Tuple2<Boolean, Boolean>>> importFunctionGlobalsIn = new HashMap<>();
    private final Map<BigInteger, List<Optional<Tuple2<Boolean, Boolean>>>> importFunctionGlobalsOut = new HashMap<>();
    private final Map<BigInteger, Tuple2<Boolean, Boolean>> importFunctionMemoryDataIn = new HashMap<>();
    private final Map<BigInteger, Tuple2<Boolean, Boolean>> importFunctionMemorySizeIn = new HashMap<>();
    private final Map<BigInteger, Optional<Tuple2<Boolean, Boolean>>> importFunctionMemoryDataOut = new HashMap<>();
    private final Map<BigInteger, Optional<Tuple2<Boolean, Boolean>>> importFunctionMemorySizeOut = new HashMap<>();

    private final Map<BigInteger, Tuple2<Boolean, Boolean>> importFunctionTableIn = new HashMap<>();
    private final Map<BigInteger, Optional<Tuple2<Boolean, Boolean>>> importFunctionTableOut = new HashMap<>();
    private final Map<BigInteger, Tuple2<Boolean, Boolean>> importFunctionContext = new HashMap<>();
    private final Map<BigInteger, Map<String, Boolean>> importFunctionQueries = new HashMap<>();
    private final List<Tuple4<BigInteger, BigInteger, BigInteger, Boolean>> memoryAreaQueries = new ArrayList<>();
    private List<BigInteger> relevantAttackers;

    private Tuple2<Boolean, Boolean> parseLabel(String s) {
        return switch (s) {
            case "ST" -> new Tuple2<>(true, true);
            case "PT" -> new Tuple2<>(false, true);
            case "SU" -> new Tuple2<>(true, false);
            case "PU" -> new Tuple2<>(false, false);
            default -> throw new RuntimeException("Illegal label value " + s);
        };
    }

    private String unparseLabel(Tuple2<Boolean, Boolean> l) {
        if (l.v0 && l.v1) return "ST";
        if (!l.v0 && l.v1) return "PT";
        if (l.v0 && !l.v1) return "SU";
        if (!l.v0 && !l.v1) return "PU";

        throw new RuntimeException("Illegal label value " + l);
    }

    private static boolean flowsTo(Tuple2<Boolean, Boolean> a, Tuple2<Boolean, Boolean> b) {
        return (!a.v0 || b.v0) && (a.v1 || !b.v1);
    }

    private Optional<Tuple2<Boolean, Boolean>> parseLabelOption(String s) {
        if (s.equals("_")) {
            return Optional.empty();
        }
        ;
        return Optional.of(parseLabel(s));
    }


    public WasmNoninterferenceTestSelectorFunctionProvider(TestSpecification test) {
        functionId = test.function_id;
        functionName = test.function_name;

        if (test.function_id != null && test.function_name != null) {
            throw new IllegalArgumentException("TestSpecification may not set both 'function_name' and 'function_id'");
        }
        if (test.function_id == null && test.function_name == null) {
            throw new IllegalArgumentException("TestSpecification must set one of 'function_name' and 'function_id'");
        }

        testId = test.test_id;


        arguments = test.param.stream().map(this::parseLabel).toList();
        globalsIn = test.global_in.stream().map(this::parseLabel).toList();
        memoryDataIn = parseLabel(test.memory_in.data);
        memorySizeIn = parseLabel(test.memory_in.size);
        tableIn = parseLabel(test.table_in);
        memoryDataInExceptions = test.memory_in.exception.stream().map(s -> {
            var label = parseLabel(s.label);
            return new Tuple4<>(BigInteger.valueOf(s.start), BigInteger.valueOf(s.endInclusive), label.v0, label.v1);
        }).collect(Collectors.toList());

        results = test.result.stream().map(this::parseLabel).toList();
        globalsOut = test.global_out.stream().map(this::parseLabel).toList();
        memoryDataOut = parseLabel(test.memory_out.data);
        memorySizeOut = parseLabel(test.memory_out.size);
        tableOut = parseLabel(test.table_out);

        queries = test.queries.getQueries();

        for (TestSpecification.ImportFunctionSpecification spec : test.imported_function) {
            BigInteger functionRef;
            TestSpecification.FunctionIdentifier functionIdentifier;

            if (spec.function_id != null && spec.function_name != null) {
                throw new IllegalArgumentException("TestSpecification may not set both 'function_name' and 'function_id'");
            }
            if (spec.function_id == null && spec.function_name == null) {
                throw new IllegalArgumentException("TestSpecification must set one of 'function_name' and 'function_id'");
            }

            if (spec.function_id != null) {
                functionRef = spec.function_id;
                functionIdentifier = new TestSpecification.FunctionIdentifier(spec.function_id);
            } else {
                functionIdentifier = new TestSpecification.FunctionIdentifier(spec.function_name);
                if (functionNamesToSubstitutes.containsKey(spec.function_name)) {
                    functionRef = functionNamesToSubstitutes.get(spec.function_name);
                } else {
                    functionRef = BigInteger.valueOf(Long.MAX_VALUE).add(BigInteger.valueOf(functionNamesToSubstitutes.size()));
                    functionNamesToSubstitutes.put(spec.function_name, functionRef);
                    substitutesToFunctionNames.put(functionRef, spec.function_name);
                }
            }

            importFunctionContext.put(functionRef, parseLabel(spec.context));
            importFunctionArguments.put(functionRef, spec.param.stream().map(this::parseLabel).toList());
            importFunctionGlobalsIn.put(functionRef, spec.global_in.stream().map(this::parseLabel).toList());
            importFunctionMemoryDataIn.put(functionRef, parseLabel(spec.memory_in.data));
            importFunctionMemorySizeIn.put(functionRef, parseLabel(spec.memory_in.size));
            importFunctionTableIn.put(functionRef, parseLabel(spec.table_in));

            importFunctionResults.put(functionRef, spec.result.stream().map(this::parseLabel).toList());
            importFunctionGlobalsOut.put(functionRef, spec.global_out.stream().map(this::parseLabelOption).toList());
            importFunctionMemoryDataOut.put(functionRef, parseLabelOption(spec.memory_out.data));
            importFunctionMemorySizeOut.put(functionRef, parseLabelOption(spec.memory_out.size));
            importFunctionTableOut.put(functionRef, parseLabelOption(spec.table_out));

            importFunctionQueries.put(functionRef, test.queries.getQueriesForImportedFunction(functionIdentifier));
        }

        for (var q : test.queries.getQueriesForMemoryArea()) {
            memoryAreaQueries.add(new Tuple4<>(testId, q.v0, q.v1, q.v2));
        }
    }

    public static WasmNoninterferenceTestSelectorFunctionProvider initWithChecks(TestSpecification test, WModule module) {
        var res = new WasmNoninterferenceTestSelectorFunctionProvider(test);

        var sectionFunction = module.findSectionFunction().orElseThrow(() -> new IllegalArgumentException("Provided module has no function section"));
        var sectionType = module.findSectionType().orElseThrow(() -> new IllegalArgumentException("Provided module has no type section"));
        var sectionCode = module.findSectionCode().orElseThrow(() -> new IllegalArgumentException("Provided module has no code section"));
        var sectionImport = module.findSectionImport();
        var sectionExport = module.findSectionExport();
        var globalCount = module.findSectionImport().map(imports -> imports.getStats().getIdxOfGlobals().size()).orElse(0) +
                module.findSectionGlobal().map(s -> s.getEntries().size()).orElse(0);
        var viewFunction = new WViewFunction();

        sectionImport.ifPresent(wSectionImport -> WEImport.map(viewFunction, sectionType, wSectionImport));
        WEFunction.map(viewFunction, sectionType, sectionCode, sectionFunction);
        int functionId;
        if (res.functionId != null) {
            functionId = res.functionId.intValueExact();
        } else {
            if (sectionExport.isEmpty()) {
                throw new IllegalArgumentException("Cannot find function '" + res.functionName + "' as given module contains no export section.");
            }
            var optFunction = sectionExport.get().getEntries().stream().filter(ee -> ee.getName().equals(res.functionName)).findAny();
            if (optFunction.isEmpty()) {
                throw new IllegalArgumentException("Cannot find function '" + res.functionName + "' in given module.");
            }
            functionId = (int) optFunction.get().getValue();
        }

        res.functionId = BigInteger.valueOf(functionId);

        if (viewFunction.getFunctions().size() <= functionId) {
            throw new IllegalArgumentException("Function Id " + functionId + " is not contained in provided module");
        }


        var function = viewFunction.getFunctions().get(functionId);

        throwOnSizeMismatch(function.getArgTypes().size(), res.arguments.size(), "function (" + functionId + ")", "argument(s)");
        throwOnSizeMismatch(globalCount, res.globalsIn.size(), "function (" + functionId + ")", "global(s)");

        if (res.queries.containsKey("result")) {
            throwOnSizeMismatch(function.getResTypes().size(), res.results.size(), "function (" + functionId + ")", "results(s)");
        }

        if (res.queries.containsKey("global")) {
            throwOnSizeMismatch(globalCount, res.globalsOut.size(), "function", "global output specification(s)");
        }

        replaceSubstitutes(res, res.importFunctionArguments, module);
        replaceSubstitutes(res, res.importFunctionResults, module);
        replaceSubstitutes(res, res.importFunctionGlobalsIn, module);
        replaceSubstitutes(res, res.importFunctionGlobalsOut, module);
        replaceSubstitutes(res, res.importFunctionMemoryDataIn, module);
        replaceSubstitutes(res, res.importFunctionMemorySizeIn, module);
        replaceSubstitutes(res, res.importFunctionMemoryDataOut, module);
        replaceSubstitutes(res, res.importFunctionMemorySizeOut, module);
        replaceSubstitutes(res, res.importFunctionTableIn, module);
        replaceSubstitutes(res, res.importFunctionTableOut, module);
        replaceSubstitutes(res, res.importFunctionContext, module);
        replaceSubstitutes(res, res.importFunctionQueries, module);

        for (var importedFunctionId : res.importFunctionContext.keySet()) {
            String whatIsTested = "imported function (" + importedFunctionId + ")";
            throwOnSizeMismatch(globalCount, res.importFunctionGlobalsOut.get(importedFunctionId).size(), whatIsTested, "global output specification(s)");
            throwOnSizeMismatch(viewFunction.get(importedFunctionId.intValueExact()).getResTypes().size(), res.importFunctionResults.get(importedFunctionId).size(), whatIsTested, "result specification(s)");

            Tuple2<Boolean, Boolean> ctx = res.importFunctionContext.get(importedFunctionId);

            List<Tuple2<Boolean, Boolean>> illegalParams = res.importFunctionArguments.get(importedFunctionId).stream().filter(l -> !flowsTo(ctx, l)).toList();
            if (!illegalParams.isEmpty()) {
                throw new IllegalArgumentException("Tested " + whatIsTested + " has context label " + res.unparseLabel(ctx) + " which does not flow to parameter labels " + illegalParams.stream().map(res::unparseLabel));
            }

            List<Tuple2<Boolean, Boolean>> illegalGlobalIns = res.importFunctionGlobalsIn.get(importedFunctionId).stream().filter(l -> !flowsTo(ctx, l)).toList();
            if (!illegalGlobalIns.isEmpty()) {
                throw new IllegalArgumentException("Tested " + whatIsTested + " has context label " + res.unparseLabel(ctx) + " which does not flow to global in labels " + illegalGlobalIns.stream().map(res::unparseLabel));
            }

            Tuple2<Boolean, Boolean> memoryDataIn = res.importFunctionMemoryDataIn.get(importedFunctionId);
            if (!flowsTo(ctx, memoryDataIn)) {
                throw new IllegalArgumentException("Tested " + whatIsTested + " has context label " + res.unparseLabel(ctx) + " which does not flow to memory data in label " + res.unparseLabel(memoryDataIn));
            }

            Tuple2<Boolean, Boolean> memorySizeIn = res.importFunctionMemorySizeIn.get(importedFunctionId);
            if (!flowsTo(ctx, memorySizeIn)) {
                throw new IllegalArgumentException("Tested " + whatIsTested + " has context label " + res.unparseLabel(ctx) + " which does not flow to memory size in label " + res.unparseLabel(memorySizeIn));
            }

            Tuple2<Boolean, Boolean> tableIn = res.importFunctionTableIn.get(importedFunctionId);
            if (!flowsTo(ctx, tableIn)) {
                throw new IllegalArgumentException("Tested " + whatIsTested + " has context label " + res.unparseLabel(ctx) + " which does not flow to function table in label " + res.unparseLabel(tableIn));
            }
        }

//        test.queries.getQueries().keySet().forEach(System.out::println);

        return res;
    }

    private static <T> void replaceSubstitutes(WasmNoninterferenceTestSelectorFunctionProvider res, Map<BigInteger, T> map, WModule module) {
        var optSectionImport = module.findSectionImport();
        var toAdd = new HashMap<BigInteger, T>();
        var toRemove = new HashSet<BigInteger>();

        for (var k : map.keySet()) {
            if (res.substitutesToFunctionNames.containsKey(k)) {
                String name = res.substitutesToFunctionNames.get(k);
                var optImportEntryIdx = optSectionImport.flatMap(e -> IntStream.range(0, e.getEntries().size()).boxed().filter(idx -> e.getEntries().get(idx).getName().equals(name)).findAny());
                if (optImportEntryIdx.isEmpty()) {
                    throw new IllegalArgumentException("Module does not import function '" + name + "'!");
                }
                var x = map.get(k);
                toAdd.put(BigInteger.valueOf(optImportEntryIdx.get()), x);
                toRemove.add(k);
            }
        }

        for (var k : toRemove) {
            map.remove(k);
        }

        for (var e : toAdd.entrySet()) {
            map.put(e.getKey(), e.getValue());
        }
    }

    private static void throwOnSizeMismatch(int sizeInModule, int sizeInSpec, String whatIsTested, String whatIsCounted) {
        if (sizeInModule != sizeInSpec) {
            throw new IllegalArgumentException("Tested " + whatIsTested + " has " + sizeInModule + " " + whatIsCounted + " but specification provides " + sizeInSpec + "!");
        }
    }

    public Iterable<BigInteger> startFunctionId() {
        return List.of(functionId);
    }

    public Iterable<BigInteger> testId() {
        return List.of(testId);
    }

    public void setFixedAttackers(List<Attacker> fixedAttackers) {
        relevantAttackers = fixedAttackers.stream()
                .distinct()
                .map(a -> new Tuple2<>(a.name().startsWith("S"), a.name().endsWith("U")))
                .map(labelToInt::get)
                .toList();
    }

    static Map<Tuple2<Boolean, Boolean>, BigInteger> labelToInt = Stream.of(false, true).flatMap(x -> Stream.of(false, true).map(y -> new Tuple2<>(x, y))).collect(Collectors.toMap(x -> x, t -> BigInteger.valueOf((t.v0 ? 2 : 0) + (t.v1 ? 1 : 0))));

    public Iterable<BigInteger> relevantAttackers() {
        return relevantAttackers;
    }

    public Iterable<Tuple2<Boolean, Boolean>> argumentLabelForPosition(BigInteger pos) {
        if (pos.intValueExact() >= arguments.size()) {
            return List.of();
        }
        return List.of(arguments.get(pos.intValueExact()));
    }

    public Iterable<Tuple2<Boolean, Boolean>> globalInLabelForPosition(BigInteger pos) {
        if (pos.intValueExact() >= globalsIn.size()) {
            return List.of();
        }
        return List.of(globalsIn.get(pos.intValueExact()));
    }

    public Iterable<Tuple2<Boolean, Boolean>> memoryDataInLabel() {
        return List.of(memoryDataIn);
    }

    public Iterable<Tuple4<BigInteger, BigInteger, Boolean, Boolean>> memoryDataInLabelExceptions() {
        return memoryDataInExceptions;
    }

    public Iterable<Tuple2<Boolean, Boolean>> memorySizeInLabel() {
        return List.of(memorySizeIn);
    }

    public Iterable<Tuple2<Boolean, Boolean>> tableInLabel() {
        return List.of(tableIn);
    }

    public Iterable<Tuple2<Boolean, Boolean>> resultLabelForPosition(BigInteger pos) {
        if (pos.intValueExact() >= results.size()) {
            return List.of();
        }
        return List.of(results.get(pos.intValueExact()));
    }

    public Iterable<Tuple2<Boolean, Boolean>> globalOutLabelForPosition(BigInteger pos) {
        if (pos.intValueExact() >= globalsOut.size()) {
            return List.of();
        }
        return List.of(globalsOut.get(pos.intValueExact()));
    }

    public Iterable<Tuple2<Boolean, Boolean>> memoryDataOutLabel() {
        return List.of(memoryDataOut);
    }

    public Iterable<Tuple2<Boolean, Boolean>> memorySizeOutLabel() {
        return List.of(memorySizeOut);
    }

    public Iterable<Tuple2<Boolean, Boolean>> tableOutLabel() {
        return List.of(tableOut);
    }

    public Iterable<Tuple2<Boolean, Boolean>> contextLabelForImportedFunction(BigInteger fid) {
        return List.of(importFunctionContext.get(fid));
    }

    public Iterable<Tuple2<Boolean, Boolean>> argumentLabelForImportedFunctionAndPosition(BigInteger fid, BigInteger pos) {
        List<Tuple2<Boolean, Boolean>> args = importFunctionArguments.get(fid);
        if (pos.intValueExact() >= args.size()) {
            return List.of();
        }
        return List.of(args.get(pos.intValueExact()));
    }

    public Iterable<Tuple2<Boolean, Boolean>> resultLabelForImportedFunctionAndPosition(BigInteger fid, BigInteger pos) {
        List<Tuple2<Boolean, Boolean>> results = importFunctionResults.get(fid);
        if (pos.intValueExact() >= results.size()) {
            return List.of();
        }
        return List.of(results.get(pos.intValueExact()));
    }

    public Iterable<Tuple2<Boolean, Boolean>> globalInLabelForImportedFunctionAndPosition(BigInteger fid, BigInteger pos) {
        List<Tuple2<Boolean, Boolean>> results = importFunctionGlobalsIn.get(fid);
        if (pos.intValueExact() >= results.size()) {
            return List.of();
        }
        return List.of(results.get(pos.intValueExact()));
    }

    public Iterable<Tuple2<Boolean, Boolean>> memoryDataInLabelForImportedFunction(BigInteger fid) {
        return List.of(importFunctionMemoryDataIn.get(fid));
    }

    public Iterable<Tuple2<Boolean, Boolean>> memorySizeInLabelForImportedFunction(BigInteger fid) {
        return List.of(importFunctionMemorySizeIn.get(fid));
    }

    public Iterable<Tuple2<Boolean, Boolean>> tableInLabelForImportedFunction(BigInteger fid) {
        return List.of(importFunctionTableIn.get(fid));
    }

    public Iterable<Tuple3<Boolean, Boolean, Boolean>> globalOutLabelForImportedFunctionAndPosition(BigInteger fid, BigInteger pos) {
        List<Optional<Tuple2<Boolean, Boolean>>> globals = importFunctionGlobalsOut.get(fid);
        if (pos.intValueExact() >= globals.size()) {
            return List.of();
        }
        Optional<Tuple2<Boolean, Boolean>> lopt = globals.get(pos.intValueExact());
        Tuple2<Boolean, Boolean> l = lopt.orElse(new Tuple2<>(true, false));
        return List.of(new Tuple3<>(lopt.isEmpty(), l.v0, l.v1));
    }

    public Iterable<Tuple3<Boolean, Boolean, Boolean>> memoryDataOutLabelForImportedFunction(BigInteger fid) {
        Optional<Tuple2<Boolean, Boolean>> lopt = importFunctionMemoryDataOut.get(fid);
        Tuple2<Boolean, Boolean> l = lopt.orElse(new Tuple2<>(true, false));
        return List.of(new Tuple3<>(lopt.isEmpty(), l.v0, l.v1));
    }

    public Iterable<Tuple3<Boolean, Boolean, Boolean>> memorySizeOutLabelForImportedFunction(BigInteger fid) {
        Optional<Tuple2<Boolean, Boolean>> lopt = importFunctionMemorySizeOut.get(fid);
        Tuple2<Boolean, Boolean> l = lopt.orElse(new Tuple2<>(true, false));
        return List.of(new Tuple3<>(lopt.isEmpty(), l.v0, l.v1));
    }

    public Iterable<Tuple3<Boolean, Boolean, Boolean>> tableOutLabelForImportedFunction(BigInteger fid) {
        Optional<Tuple2<Boolean, Boolean>> lopt = importFunctionTableOut.get(fid);
        Tuple2<Boolean, Boolean> l = lopt.orElse(new Tuple2<>(true, false));
        return List.of(new Tuple3<>(lopt.isEmpty(), l.v0, l.v1));
    }

    public Iterable<BigInteger> resultSafe() {
        if (queries.getOrDefault("result", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> resultLeak() {
        if (queries.getOrDefault("result", true)) {
            return List.of();
        }
        return List.of(testId);
    }

    public Iterable<BigInteger> globalSafe() {
        if (queries.getOrDefault("global", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> globalLeak() {
        if (queries.getOrDefault("global", true)) {
            return List.of();
        }
        return List.of(testId);
    }

    public Iterable<BigInteger> memoryDataSafe() {
        if (queries.getOrDefault("memory_data", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> memoryDataLeak() {
        if (queries.getOrDefault("memory_data", true)) {
            return List.of();
        }
        return List.of(testId);
    }

    public Iterable<Tuple3<BigInteger, BigInteger, BigInteger>> memoryAreaSafe() {
        return memoryAreaQueries.stream()
                .filter(q -> q.v3)
                .map(q -> new Tuple3<>(q.v0, q.v1, q.v2))
                .collect(Collectors.toList());
    }

    public Iterable<Tuple3<BigInteger, BigInteger, BigInteger>> memoryAreaLeak() {
        return memoryAreaQueries.stream()
                .filter(q -> !q.v3)
                .map(q -> new Tuple3<>(q.v0, q.v1, q.v2))
                .collect(Collectors.toList());
    }

    public Iterable<BigInteger> memorySizeSafe() {
        if (queries.getOrDefault("memory_size", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> memorySizeLeak() {
        if (queries.getOrDefault("memory_size", true)) {
            return List.of();
        }
        return List.of(testId);
    }

    public Iterable<BigInteger> tableSafe() {
        if (queries.getOrDefault("table", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> tableLeak() {
        if (queries.getOrDefault("table", true)) {
            return List.of();
        }
        return List.of(testId);
    }

    public Iterable<BigInteger> importCallArgumentSafe(BigInteger functionId) {
        if (importFunctionQueries.getOrDefault(functionId, Map.of()).getOrDefault("param", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> importCallArgumentLeak(BigInteger functionId) {
        if (importFunctionQueries.getOrDefault(functionId, Map.of()).getOrDefault("param", true)) {
            return List.of();
        }
        return List.of(testId);
    }

    public Iterable<BigInteger> importCallGlobalSafe(BigInteger functionId) {
        if (importFunctionQueries.getOrDefault(functionId, Map.of()).getOrDefault("global", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> importCallGlobalLeak(BigInteger functionId) {
        if (importFunctionQueries.getOrDefault(functionId, Map.of()).getOrDefault("global", true)) {
            return List.of();
        }
        return List.of(testId);
    }

    public Iterable<BigInteger> importCallMemoryDataSafe(BigInteger functionId) {
        if (importFunctionQueries.getOrDefault(functionId, Map.of()).getOrDefault("memory_data", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> importCallMemoryDataLeak(BigInteger functionId) {
        if (importFunctionQueries.getOrDefault(functionId, Map.of()).getOrDefault("memory_data", true)) {
            return List.of();
        }
        return List.of(testId);
    }

    public Iterable<BigInteger> importCallMemorySizeSafe(BigInteger functionId) {
        if (importFunctionQueries.getOrDefault(functionId, Map.of()).getOrDefault("memory_size", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> importCallMemorySizeLeak(BigInteger functionId) {
        if (importFunctionQueries.getOrDefault(functionId, Map.of()).getOrDefault("memory_size", true)) {
            return List.of();
        }
        return List.of(testId);
    }

    public Iterable<BigInteger> importCallContextSafe(BigInteger functionId) {
        if (importFunctionQueries.getOrDefault(functionId, Map.of()).getOrDefault("context", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> importCallContextLeak(BigInteger functionId) {
        if (importFunctionQueries.getOrDefault(functionId, Map.of()).getOrDefault("context", true)) {
            return List.of();
        }
        return List.of(testId);
    }

    public Iterable<BigInteger> importCallTableSafe(BigInteger functionId) {
        if (importFunctionQueries.getOrDefault(functionId, Map.of()).getOrDefault("table", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> importCallTableLeak(BigInteger functionId) {
        if (importFunctionQueries.getOrDefault(functionId, Map.of()).getOrDefault("table", true)) {
            return List.of();
        }
        return List.of(testId);
    }

    public Iterable<BigInteger> trapResultSafe() {
        if (queries.getOrDefault("trap_result", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> trapResultLeak() {
        if (queries.getOrDefault("trap_result", true)) {
            return List.of();
        }
        return List.of(testId);
    }

    public Iterable<BigInteger> divergenceResultSafe() {
        if (queries.getOrDefault("divergence_result", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> divergenceResultLeak() {
        if (queries.getOrDefault("divergence_result", true)) {
            return List.of();
        }
        return List.of(testId);
    }

    public Iterable<BigInteger> trapDivergenceSafe() {
        if (queries.getOrDefault("trap_divergence", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> trapDivergenceLeak() {
        if (queries.getOrDefault("trap_divergence", true)) {
            return List.of();
        }
        return List.of(testId);
    }

    public Iterable<BigInteger> globalTrapSafe() {
        if (queries.getOrDefault("global_trap", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> globalTrapLeak() {
        if (queries.getOrDefault("global_trap", true)) {
            return List.of();
        }
        return List.of(testId);
    }

    public Iterable<BigInteger> memoryDataTrapSafe() {
        if (queries.getOrDefault("memory_data_trap", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> memoryDataTrapLeak() {
        if (queries.getOrDefault("memory_data_trap", true)) {
            return List.of();
        }
        return List.of(testId);
    }

    public Iterable<BigInteger> memorySizeTrapSafe() {
        if (queries.getOrDefault("memory_size_trap", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> memorySizeTrapLeak() {
        if (queries.getOrDefault("memory_size_trap", true)) {
            return List.of();
        }
        return List.of(testId);
    }

    public Iterable<BigInteger> tableTrapSafe() {
        if (queries.getOrDefault("table_trap", false)) {
            return List.of(testId);
        }
        return List.of();
    }

    public Iterable<BigInteger> tableTrapLeak() {
        if (queries.getOrDefault("table_trap", true)) {
            return List.of();
        }
        return List.of(testId);
    }
}
