package io.github.wanonilla;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class WasmNoninterferenceSemanticsSequentialProduct {
    private WasmNoninterferenceSemanticsSequentialProduct() {
    }

    public static List<String> getSemantics() {
        return List.of(
                "resource:///horst/selector-functions/selectors.horst",
                "resource:///horst/operations/math.horst",

                "resource:///horst/constants/opcodes.horst",
                "resource:///horst/constants/helpers.horst",

                "resource:///horst/types/bitvector/value.horst",
                "resource:///horst/operations/bitvector/value-domain.horst",

                "resource:///horst/types/generic/memory.horst",
                "resource:///horst/types/generic/option.horst",

                "resource:///horst/operations/generic/imprecision/freeval.horst",

                "resource:///horst/operations/value/value.horst",
                "resource:///horst/operations/value/option.horst",
                "resource:///horst/operations/value/tuple.horst",

                "resource:///horst/operations/bitvector/conversions.horst",
                "resource:///horst/operations/generic/conversions.horst",

                "resource:///horst/operations/bitvector/numerics.horst",
                "resource:///horst/operations/bitvector/abstract-comparisons.horst",
                "resource:///horst/operations/generic/numerics.horst",

                "resource:///horst/operations/bitvector/value-checks.horst",
                "resource:///horst/operations/value/value-checks.horst",

                "resource:///horst/operations/bitvector/memory.horst",
                "resource:///horst/operations/value/memory.horst",
                "resource:///horst/operations/generic/memory-io.horst",
                "resource:///horst/operations/generic/memory.horst",

                "resource:///horst/sequential-product/predicates/states.horst",
                "resource:///horst/sequential-product/instructions/numeric.horst",
                "resource:///horst/sequential-product/instructions/parametric.horst",
                "resource:///horst/sequential-product/instructions/variable.horst",
                "resource:///horst/sequential-product/instructions/memory.horst",
                "resource:///horst/sequential-product/instructions/control.horst"
        );
    }

    public static List<String> getSemanticsForFunctionTests() {
        List<String> files = new ArrayList<>(getSemantics());
        files.add("resource:///horst/selector-functions/testing-noninterference.horst");
        files.add("resource:///horst/sequential-product/testing/propagation.horst");
        files.add("resource:///horst/sequential-product/testing/init.horst");
        files.add("resource:///horst/sequential-product/testing/noninterference.horst");
//        files.add("resource:///horst/sequential-product/testing/reachability.horst");

        return Collections.unmodifiableList(files);
    }
}
