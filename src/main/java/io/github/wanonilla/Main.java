package io.github.wanonilla;

import io.github.alisianoi.WParser;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.core.Appender;
import org.apache.logging.log4j.core.LoggerContext;
import picocli.CommandLine;
import wien.secpriv.horst.cli.*;
import wien.secpriv.horst.data.Proposition;
import wien.secpriv.horst.data.Rule;
import wien.secpriv.horst.execution.*;
import wien.secpriv.horst.internals.SelectorFunctionHelper;
import wien.secpriv.horst.internals.error.handling.ExceptionThrowingErrorHandlerWithLocation;
import wien.secpriv.horst.tools.HorstFileParser;
import wien.secpriv.horst.tools.PredicateHelper;
import wien.secpriv.horst.translation.StandardZ3TranslationPipeline;
import wien.secpriv.horst.translation.TranslationPipeline;
import wien.secpriv.horst.translation.external.SmtLibTheory;
import wien.secpriv.horst.translation.visitors.TranslateToSmtLibVisitorState;
import wien.secpriv.horst.visitors.CachedReadableOperationsScope;
import wien.secpriv.horst.visitors.VisitorState;

import java.nio.file.Path;
import java.util.*;
import java.util.stream.Collectors;

@CommandLine.Command(name = "Main", mixinStandardHelpOptions = true)
public class Main implements Runnable {
    public static final SmtLibTheory externalTheory = new BitVectorTheory();
    public static final WasmNoninterferenceSemanticsLValuePredicateMemory.Precision precision = WasmNoninterferenceSemanticsLValuePredicateMemory.Precision.IMPRECISE;

    @CommandLine.Mixin
    private VerbosityMixin verbosity;

    @CommandLine.Mixin
    private SmtOutDirMixin smtOutDir;

    @CommandLine.Mixin
    private JsonOutDirMixin jsonOutDir;

    @CommandLine.Option(names = {"--z3-query-timeout"}, description = "Timeout in milliseconds after which z3 executions are aborted (per query). A negative value disables the query timeout.", defaultValue = "-1")
    private long z3QueryTimeout;

    @CommandLine.Mixin
    private NoOutputQueryResultsMixin noOutputQueryResultsMixin;

    @CommandLine.Mixin
    private PruneAndInliningMixin pruneAndInliningMixin;

    @CommandLine.Mixin
    private SmtDialectMixin smtDialectMixin;

    @CommandLine.Parameters
    private String[] args;


    public static void main(String[] args) {
        CommandLine.run(new Main(), args);
    }

    void parsePreciseLvaluePredicateMemorySemantics(VisitorState state, String sensitivity) {
        if (sensitivity.equals("tsni")) {
            HorstFileParser.parseAllHorstFiles(state, WasmNoninterferenceSemanticsLValuePredicateMemory.getSemanticsForTerminationSensitiveFunctionTests(precision));
        } else {
            HorstFileParser.parseAllHorstFiles(state, WasmNoninterferenceSemanticsLValuePredicateMemory.getSemanticsForFunctionTests(precision));
        }
    }

    @Override
    public void run() {
        configureLogger();

        var path = args[0];
        var jsonPath = args[1];
        var module = new WParser().parse(path);
        var wasmSelectorFunctionProvider = new WasmNoninterferenceSelectorFunctionProvider(module);


        for (TestSpecification test : SpecificationParser.fromJson(jsonPath).toList()) {
            var wasmTestSelectorFunctionProvider = WasmNoninterferenceTestSelectorFunctionProvider.initWithChecks(test, module);

            List<ExecutionResultHandler> executionResultHandlers = new ArrayList<>(jsonOutDir.getExecutionResultHandler(Path.of(path).getFileName().toString() + "_" + test.test_id));

            VisitorState state = new VisitorState();
            state.errorHandler = new ExceptionThrowingErrorHandlerWithLocation(state.spans);
            SelectorFunctionHelper selectorFunctionHelper = new SelectorFunctionHelper();
            selectorFunctionHelper.registerProvider(wasmSelectorFunctionProvider);
            selectorFunctionHelper.registerProvider(wasmTestSelectorFunctionProvider);
            state.setSelectorFunctionHelper(selectorFunctionHelper);

            parsePreciseLvaluePredicateMemorySemantics(state, test.sensitivity);

            TranslationPipeline pipeline = StandardZ3TranslationPipeline.get(state, selectorFunctionHelper, externalTheory);
            List<Rule> rules = pipeline.apply(new ArrayList<>(state.getRules().values()));
            Set<Proposition.PredicateProposition> originalQueries = rules.stream().flatMap(r -> r.clauses.stream()).map(c -> c.conclusion).filter(PredicateHelper::isQueryOrTest).collect(Collectors.toSet());

            List<QuerySpecificPreprocessingStrategy> querySpecificPreprocessingStrategies = initializeQueryPreprocessingStrategies(path);

            QueryExecutor executor = new SmtGeneratingZ3QueryExecutor(params -> new TranslateToSmtLibVisitorState(params, externalTheory),
                    Map.of(),
                    rules, ExecutionStrategy.Enum.all.getStrategy(),
                    querySpecificPreprocessingStrategies,
                    z3QueryTimeout,
                    smtDialectMixin.getDialect()
            );

            List<ExecutionResult> executionResults = originalQueries.stream().map(executor::executeQuery).collect(Collectors.toList());

            for (ExecutionResultHandler handler : executionResultHandlers) {
                handler.handle(executionResults);
            }
        }
    }

    private List<QuerySpecificPreprocessingStrategy> initializeQueryPreprocessingStrategies(String path) {
        List<QuerySpecificPreprocessingStrategy> querySpecificPreprocessingStrategies = new ArrayList<>(pruneAndInliningMixin.getQuerySpecificPreprocessingStrategy(externalTheory.getConstantFoldingTranslator(new CachedReadableOperationsScope(List.of()))));
        querySpecificPreprocessingStrategies.add(new FreeVarResolutionStrategy());
        String header = "";
        querySpecificPreprocessingStrategies.addAll(smtOutDir.getQuerySpecificPreprocessingStrategy(Path.of(path).getFileName().toString(), header, externalTheory));

        if (noOutputQueryResultsMixin.getExecutionResultHandler(path).isEmpty()) {
            querySpecificPreprocessingStrategies.add(new QuerySpecificPreprocessingStrategy() {
                @Override
                public Optional<List<Rule>> preprocessForQuery(List<Rule> list, Proposition.PredicateProposition predicateProposition) {
                    return Optional.empty();
                }
            });
        }

        return querySpecificPreprocessingStrategies;
    }

    private void configureLogger() {
        LoggerContext context = (LoggerContext) LogManager.getContext(false);
        Level level = verbosity.getLoggerLevel();
        context.getConfiguration().getRootLogger().setLevel(level);
        Logger.getRootLogger().setLevel(org.apache.log4j.Level.ERROR);

        Appender consoleAppender = context.getConfiguration().getAppender("Console");
        context.getConfiguration().getRootLogger().addAppender(consoleAppender, level, null);
        BasicConfigurator.configure();
    }
}