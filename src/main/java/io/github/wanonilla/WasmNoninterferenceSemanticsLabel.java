package io.github.wanonilla;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class WasmNoninterferenceSemanticsLabel {
    private WasmNoninterferenceSemanticsLabel() {
    }

    public static List<String> getSemantics() {
        return List.of(
                "resource:///horst/selector-functions/selectors.horst",
                "resource:///horst/operations/math.horst",

                "resource:///horst/constants/opcodes.horst",
                "resource:///horst/constants/helpers.horst",

                "resource:///horst/types/label/label.horst",
                "resource:///horst/types/label/value.horst",
                "resource:///horst/types/label/context.horst",

                "resource:///horst/label/types/memory.horst",

                "resource:///horst/operations/label/label.horst",
                "resource:///horst/operations/label/context.horst",
                "resource:///horst/operations/value/tuple.horst",
                "resource:///horst/label/operations/value.horst",
                "resource:///horst/label/operations/memory.horst",

                "resource:///horst/label/predicates/states.horst",
                "resource:///horst/label/instructions/numeric.horst",
                "resource:///horst/label/instructions/parametric.horst",
                "resource:///horst/label/instructions/variable.horst",
                "resource:///horst/label/instructions/memory.horst",
                "resource:///horst/label/instructions/control.horst"
        );
    }

    public static List<String> getSemanticsForFunctionTests() {
        List<String> files = new ArrayList<>(getSemantics());
        files.add("resource:///horst/selector-functions/testing-noninterference.horst");
        files.add("resource:///horst/label/testing/init.horst");
        files.add("resource:///horst/label/testing/propagation.horst");
        files.add("resource:///horst/label/testing/noninterference.horst");

        return Collections.unmodifiableList(files);
    }
}
