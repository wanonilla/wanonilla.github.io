package io.github.wanonilla;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class WasmNoninterferenceSemanticsLValuePredicateMemory {

    enum Precision {PRECISE, IMPRECISE};
    private WasmNoninterferenceSemanticsLValuePredicateMemory() {
    }

    public static List<String> getSemantics(Precision precision) {
        return List.of(
                "resource:///horst/selector-functions/selectors.horst",
                "resource:///horst/operations/math.horst",

                "resource:///horst/constants/opcodes.horst",
                "resource:///horst/constants/helpers.horst",

                // TODO: Allow integer semantics to be selected...
                "resource:///horst/types/bitvector/value.horst",
                "resource:///horst/operations/bitvector/value-domain.horst",

                "resource:///horst/types/label/label.horst",
                "resource:///horst/types/label/context.horst",
                "resource:///horst/types/label/table.horst",
                "resource:///horst/types/lvalue/lvalue.horst",

                "resource:///horst/lvalue-predicate-memory/types/memory.horst",
                "resource:///horst/types/generic/option.horst",

                "resource:///horst/operations/generic/imprecision/freeval.horst",

                "resource:///horst/operations/value/value.horst",
                "resource:///horst/operations/value/option.horst",

                "resource:///horst/operations/bitvector/conversions.horst",
                "resource:///horst/operations/generic/conversions.horst",

                "resource:///horst/operations/bitvector/numerics.horst",
                "resource:///horst/operations/bitvector/abstract-comparisons.horst",
                "resource:///horst/operations/generic/numerics.horst",

                "resource:///horst/operations/bitvector/value-checks.horst",
                "resource:///horst/operations/value/value-checks.horst",

                "resource:///horst/operations/bitvector/memory.horst",
                "resource:///horst/lvalue-predicate-memory/operations/memory-io-stub.horst",
                "resource:///horst/operations/generic/memory.horst",

                "resource:///horst/operations/label/label.horst",
                "resource:///horst/operations/label/context.horst",
                "resource:///horst/operations/lvalue/lvalue.horst",
                "resource:///horst/operations/lvalue/tuple.horst",

                "resource:///horst/lvalue-predicate-memory/operations/memory.horst",
                "resource:///horst/lvalue-predicate-memory/operations/overapproximation.horst",

                "resource:///horst/lvalue-predicate-memory/predicates/states.horst",
                "resource:///horst/lvalue-predicate-memory/instructions/numeric" + (precision == Precision.PRECISE ? "" : "-imprecise") + ".horst",
                "resource:///horst/lvalue-predicate-memory/instructions/parametric" + (precision == Precision.PRECISE ? "" : "-imprecise") + ".horst",
                "resource:///horst/lvalue-predicate-memory/instructions/variable.horst",
                "resource:///horst/lvalue-predicate-memory/instructions/memory.horst",
                "resource:///horst/lvalue-predicate-memory/instructions/control.horst"
        );
    }

    public static List<String> getSemanticsForFunctionTests(Precision precision) {
        List<String> files = new ArrayList<>(getSemantics(precision));
        files.addAll(List.of(
            "resource:///horst/selector-functions/testing-noninterference.horst",
            "resource:///horst/lvalue-predicate-memory/instructions/imported-functions.horst",
            "resource:///horst/lvalue-predicate-memory/testing/init.horst",
            "resource:///horst/lvalue-predicate-memory/testing/propagation.horst",
            "resource:///horst/lvalue-predicate-memory/testing/noninterference.horst",
            "resource:///horst/lvalue-predicate-memory/testing/imported-functions.horst"
        ));
        // Optionals for testing
//        files.add("resource:///horst/lvalue-predicate-memory/testing/result.horst");
//        files.add("resource:///horst/lvalue-predicate-memory/testing/reachability.horst");
        return Collections.unmodifiableList(files);
    }

    public static List<String> getSemanticsForTerminationSensitiveFunctionTests(Precision precision) {
        List<String> files = new ArrayList<>(getSemanticsForFunctionTests(precision));
        files.addAll(List.of(
                "resource:///horst/selector-functions/testing-noninterference-termination-sensitive.horst",
                "resource:///horst/lvalue-predicate-memory/predicates/states-termination-sensitive.horst",
                "resource:///horst/lvalue-predicate-memory/instructions/termination-sensitive/numeric.horst",
                "resource:///horst/lvalue-predicate-memory/instructions/termination-sensitive/memory.horst",
                "resource:///horst/lvalue-predicate-memory/instructions/termination-sensitive/control-traps.horst",
                "resource:///horst/lvalue-predicate-memory/instructions/termination-sensitive/control-divergence.horst",
                "resource:///horst/lvalue-predicate-memory/testing/propagation-termination-sensitive.horst",
                "resource:///horst/lvalue-predicate-memory/testing/noninterference-termination-sensitive.horst"
        ));
        return Collections.unmodifiableList(files);
    }
}
