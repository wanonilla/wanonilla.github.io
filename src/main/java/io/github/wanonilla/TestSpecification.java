package io.github.wanonilla;

import wien.secpriv.horst.data.tuples.Tuple3;

import java.math.BigInteger;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class TestSpecification {
    public static class FunctionIdentifier {
        private final String name;
        private final BigInteger id;

        public FunctionIdentifier(String name) {
            this.name = name;
            this.id = null;
        }

        public FunctionIdentifier(BigInteger id) {
            this.name = null;
            this.id = id;
        }

        public boolean hasName(String name) {
            return this.name != null && this.name.equals(name);
        }

        public boolean hasId(BigInteger id) {
            return this.id != null && this.id.equals(id);
        }
    }

    public static class MemorySpecification {
        public String data;
        public String size;
        public List<MemoryAreaExceptionSpecification> exception = List.of();

        public MemorySpecification(String data, String size) {
            this.data = data;
            this.size = size;
        }

        public void sanitize() {
            exception = Optional.ofNullable(exception).orElseGet(List::of);
            exception.forEach(MemoryAreaExceptionSpecification::sanitize);
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;
            MemorySpecification that = (MemorySpecification) o;
            return Objects.equals(data, that.data) && Objects.equals(size, that.size) && Objects.equals(exception, that.exception);
        }

        @Override
        public int hashCode() {
            return Objects.hash(data, size, exception);
        }

        @Override
        public String toString() {
            return "MemorySpecification{" +
                    "data='" + data + '\'' +
                    ", size='" + size + '\'' +
                    ", exception=" + exception +
                    '}';
        }
    }

    public static class MemoryAreaExceptionSpecification {
        public String label;
        public Long start;
        public Long endInclusive;

        public MemoryAreaExceptionSpecification() {
        }

        public void sanitize() {
            Objects.requireNonNull(start, "start of memory area exception has to be set");
            Objects.requireNonNull(endInclusive, "endInclusive of memory area exception has to be set");
            Objects.requireNonNull(label, "label of memory area exception has to be set");
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;
            MemoryAreaExceptionSpecification that = (MemoryAreaExceptionSpecification) o;
            return Objects.equals(label, that.label) && Objects.equals(start, that.start) && Objects.equals(endInclusive, that.endInclusive);
        }

        @Override
        public int hashCode() {
            return Objects.hash(label, start, endInclusive);
        }

        @Override
        public String toString() {
            return "MemoryAreaExceptionSpecification{" +
                    "label='" + label + '\'' +
                    ", start=" + start +
                    ", endInclusive=" + endInclusive +
                    '}';
        }
    }

    public static class ImportFunctionSpecification {
        public BigInteger function_id;
        public String function_name;
        public List<String> param;
        public List<String> result;
        public List<String> global_in;
        public List<String> global_out;
        public MemorySpecification memory_in;
        public MemorySpecification memory_out;
        public String table_in;
        public String table_out;
        public String context;

        public void sanitize() {
            context = Optional.ofNullable(context).orElse("SU");
            param = Optional.ofNullable(param).orElseGet(Collections::emptyList);
            global_in = Optional.ofNullable(global_in).orElseGet(Collections::emptyList);
            memory_in = Optional.ofNullable(memory_in).orElseGet(() -> new MemorySpecification("SU", "SU"));
            table_in = Optional.ofNullable(table_in).orElse("SU");
            result = Optional.ofNullable(result).orElseGet(Collections::emptyList);
            global_out = Optional.ofNullable(global_out).orElseGet(Collections::emptyList);
            memory_out = Optional.ofNullable(memory_out).orElseGet(() -> new MemorySpecification("_", "_"));
            table_out = Optional.ofNullable(table_out).orElse("_");
        }
    }

    public static class ImportFunctionQuerySpecification {
        public BigInteger function_id;
        public String function_name;
        public String global;
        public String memory_data;
        public String memory_size;
        public String param;
        public String context;
        public String table;

        public ImportFunctionQuerySpecification() {
        }

        public void sanitize() {
            function_id = Optional.ofNullable(function_id).orElse(BigInteger.ONE.negate());
        }

        public Map<String, Boolean> getQueries() {
            return Collections.unmodifiableMap(
                    Stream.of(
                            Optional.ofNullable(global).map(s -> Map.entry("global", s)),
                            Optional.ofNullable(memory_data).map(s -> Map.entry("memory_data", s)),
                            Optional.ofNullable(memory_size).map(s -> Map.entry("memory_size", s)),
                            Optional.ofNullable(param).map(s -> Map.entry("param", s)),
                            Optional.ofNullable(context).map(s -> Map.entry("context", s)),
                            Optional.ofNullable(table).map(s -> Map.entry("table", s))
                    ).filter(Optional::isPresent).map(Optional::get).collect(Collectors.toMap(Map.Entry::getKey, e -> e.getValue().equals("UNSAT")))
            );
        }

        public boolean hasFunctionIdentifier(FunctionIdentifier fid) {
            return fid.hasName(function_name) || fid.hasId(function_id);
        }
    }

    public static class MemoryAreaQuerySpecification {
        public String result;
        public Long start;
        public Long endInclusive;

        public MemoryAreaQuerySpecification() {
        }

        public void sanitize() {
            start = Optional.ofNullable(start).orElse(0L);
            endInclusive = Optional.ofNullable(endInclusive).orElse(1L << 32L - 1L);
        }
    }

    public static class QuerySpecification {
        // Tini, Tsni
        public String global;
        public String memory_data;
        public String memory_size;
        public String table;
        // Tini and Tsni
        public String result;
        // Tsni
        public String trap_result;
        public String divergence_result;
        public String trap_divergence;
        public String global_trap;
        public String memory_data_trap;
        public String memory_size_trap;
        public String table_trap;

        public List<ImportFunctionQuerySpecification> imported_function;
        public List<MemoryAreaQuerySpecification> memory_area;

        public QuerySpecification() {
        }

        void sanitize() {
            imported_function = Optional.ofNullable(imported_function).orElseGet(List::of);
            imported_function.forEach(ImportFunctionQuerySpecification::sanitize);
            memory_area = Optional.ofNullable(memory_area).orElseGet(List::of);
            memory_area.forEach(MemoryAreaQuerySpecification::sanitize);
        }

        public Map<String, Boolean> getQueriesForImportedFunction(FunctionIdentifier fid) {
            for (ImportFunctionQuerySpecification querySpec : imported_function) {
                if (querySpec.hasFunctionIdentifier(fid)) {
                    return querySpec.getQueries();
                }
            }
            return Map.of();
        }

        public Map<String, Boolean> getQueries() {
            return Collections.unmodifiableMap(
                    Stream.of(
                            Optional.ofNullable(result).map(s -> Map.entry("result", s)),
                            Optional.ofNullable(global).map(s -> Map.entry("global", s)),
                            Optional.ofNullable(memory_data).map(s -> Map.entry("memory_data", s)),
                            Optional.ofNullable(memory_size).map(s -> Map.entry("memory_size", s)),
                            Optional.ofNullable(table).map(s -> Map.entry("table", s)),
                            Optional.ofNullable(trap_result).map(s -> Map.entry("trap_result", s)),
                            Optional.ofNullable(divergence_result).map(s -> Map.entry("divergence_result", s)),
                            Optional.ofNullable(trap_divergence).map(s -> Map.entry("trap_divergence", s)),
                            Optional.ofNullable(global_trap).map(s -> Map.entry("global_trap", s)),
                            Optional.ofNullable(memory_data_trap).map(s -> Map.entry("memory_data_trap", s)),
                            Optional.ofNullable(memory_size_trap).map(s -> Map.entry("memory_size_trap", s)),
                            Optional.ofNullable(table_trap).map(s -> Map.entry("table_trap", s))
                    ).filter(Optional::isPresent).map(Optional::get).collect(Collectors.toMap(Map.Entry::getKey, e -> e.getValue().equals("UNSAT")))
            );
        }

        public List<Tuple3<BigInteger, BigInteger, Boolean>> getQueriesForMemoryArea() {
            return memory_area.stream()
                    .map(m -> new Tuple3<>(BigInteger.valueOf(m.start), BigInteger.valueOf(m.endInclusive), m.result.equals("UNSAT")))
                    .collect(Collectors.toList());
        }
    }

    public Boolean ignore;
    public String sensitivity;
    public BigInteger test_id;
    public BigInteger function_id;
    public String function_name;
    public List<String> param;
    public List<String> global_in;
    public MemorySpecification memory_in;
    public String table_in;
    public List<String> result;
    public List<String> global_out;
    public MemorySpecification memory_out;
    public String table_out;
    public List<ImportFunctionSpecification> imported_function;
    public QuerySpecification queries;

    public void sanitize() {
        ignore = Optional.ofNullable(ignore).orElse(false);
        test_id = Optional.ofNullable(test_id).orElse(BigInteger.ZERO);
        sensitivity = Optional.ofNullable(sensitivity).orElse("tini");
        param = Optional.ofNullable(param).orElseGet(Collections::emptyList);
        global_in = Optional.ofNullable(global_in).orElseGet(Collections::emptyList);
        memory_in = Optional.ofNullable(memory_in).orElseGet(() -> new MemorySpecification("PT", "PT"));
        table_in = Optional.ofNullable(table_in).orElse("PT");
        result = Optional.ofNullable(result).orElseGet(Collections::emptyList);
        global_out = Optional.ofNullable(global_out).orElseGet(Collections::emptyList);
        memory_out = Optional.ofNullable(memory_out).orElseGet(() -> new MemorySpecification("PT", "PT"));
        table_out = Optional.ofNullable(table_out).orElse("PT");
        imported_function = Optional.ofNullable(imported_function).orElseGet(Collections::emptyList);
        imported_function.forEach(ImportFunctionSpecification::sanitize);
        queries = Optional.ofNullable(queries).orElseGet(QuerySpecification::new);
        queries.sanitize();
        memory_in.sanitize();
    }
}
