package io.github.wanonilla;

import com.google.gson.Gson;

import java.io.*;
import java.util.Arrays;
import java.util.stream.Stream;

public class SpecificationParser {
    private static Reader uncheckedFileReader(String path) {
        try {
            return new FileReader(path);
        } catch (FileNotFoundException e) {
            throw new UncheckedIOException(e);
        }
    }

    public static Stream<TestSpecification> fromJson(InputStream inputStream) {
        return fromJson(new InputStreamReader(inputStream));
    }

    public static Stream<TestSpecification> fromJson(String path) {
        return fromJson(uncheckedFileReader(path));
    }

    public static Stream<TestSpecification> fromJson(Reader reader) {
        try (var bufferedReader = new BufferedReader(reader)) {
            Gson gson = new Gson();
            Stream<TestSpecification> specifications = Arrays.stream(gson.fromJson(bufferedReader, TestSpecification[].class));
            return specifications.peek(TestSpecification::sanitize).filter(s -> !s.ignore);
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }
}
