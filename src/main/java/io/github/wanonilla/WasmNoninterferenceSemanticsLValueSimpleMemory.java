package io.github.wanonilla;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class WasmNoninterferenceSemanticsLValueSimpleMemory {
    private WasmNoninterferenceSemanticsLValueSimpleMemory() {
    }

    public static List<String> getSemantics() {
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
                "resource:///horst/types/lvalue/lvalue.horst",

                "resource:///horst/lvalue-simple-memory/types/memory.horst",
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
                "resource:///horst/lvalue-simple-memory/operations/memory-io.horst",
                "resource:///horst/operations/generic/memory.horst",

                "resource:///horst/operations/label/label.horst",
                "resource:///horst/operations/label/context.horst",
                "resource:///horst/operations/lvalue/lvalue.horst",
                "resource:///horst/operations/lvalue/tuple.horst",

                "resource:///horst/lvalue-simple-memory/operations/memory.horst",
                "resource:///horst/lvalue-simple-memory/operations/overapproximation.horst",

                "resource:///horst/lvalue-simple-memory/predicates/states.horst",
                "resource:///horst/lvalue-simple-memory/instructions/sync.horst",
                "resource:///horst/lvalue-simple-memory/instructions/numeric.horst",
                "resource:///horst/lvalue-simple-memory/instructions/parametric.horst",
                "resource:///horst/lvalue-simple-memory/instructions/variable.horst",
                "resource:///horst/lvalue-simple-memory/instructions/memory.horst",
                "resource:///horst/lvalue-simple-memory/instructions/control.horst"
        );
    }

    public static List<String> getSemanticsForFunctionTests() {
        List<String> files = new ArrayList<>(getSemantics());
        files.addAll(List.of(
            "resource:///horst/selector-functions/testing-noninterference.horst",
            "resource:///horst/lvalue-simple-memory/instructions/imported-functions.horst",
            "resource:///horst/lvalue-simple-memory/testing/init.horst",
            "resource:///horst/lvalue-simple-memory/testing/propagation.horst",
            "resource:///horst/lvalue-simple-memory/testing/noninterference.horst",
            "resource:///horst/lvalue-simple-memory/testing/imported-functions.horst"
        ));
        // Optionals for testing
//        files.add("resource:///horst/lvalue/testing/result.horst");
//        files.add("resource:///horst/lvalue/testing/reachability.horst");

        return Collections.unmodifiableList(files);
    }

    public static List<String> getSemanticsForTerminationSensitiveFunctionTests() {
        List<String> files = new ArrayList<>(getSemanticsForFunctionTests());
        files.addAll(List.of(
                "resource:///horst/selector-functions/testing-noninterference-termination-sensitive.horst",
                "resource:///horst/lvalue-simple-memory/predicates/states-termination-sensitive.horst",
                "resource:///horst/lvalue-simple-memory/instructions/termination-sensitive/numeric.horst",
                "resource:///horst/lvalue-simple-memory/instructions/termination-sensitive/memory.horst",
                "resource:///horst/lvalue-simple-memory/instructions/termination-sensitive/control-traps.horst",
                "resource:///horst/lvalue-simple-memory/instructions/termination-sensitive/control-loops.horst",
                "resource:///horst/lvalue-simple-memory/testing/propagation-termination-sensitive.horst",
                "resource:///horst/lvalue-simple-memory/testing/noninterference-termination-sensitive.horst"
        ));
        return Collections.unmodifiableList(files);
    }
}
