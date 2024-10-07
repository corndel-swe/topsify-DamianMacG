package org.example;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

public class Main {
    public static void main(String[] args) {

        Path path = Paths.get("/home/damian/Desktop/Intellij-Coursework/topsify-DamianMacG/reports/users.json");

        // Print to see its right
        System.out.println("Path to users.json: " + path.toAbsolutePath());

        ObjectMapper objectMapper = new ObjectMapper();

        try {
            // Read the JSON file and convert it to a List of User objects
            List<User> users = objectMapper.readValue(path.toFile(), new TypeReference<List<User>>() {});

            // Create the full path until I find out how to get short one working
            Path sqlPath = Paths.get("/home/damian/Desktop/Intellij-Coursework/topsify-DamianMacG/db/seeds/users.sql");

            // Write the INSERT statements to the SQL file using BufferedWriter
            try (BufferedWriter writer = new BufferedWriter(new FileWriter(sqlPath.toFile()))) {
                for (User user : users) {
                    String insertStatement = String.format(
                            "INSERT INTO users VALUES(%d, '%s', '%s', '%s', '%s', '%s', '%s');",
                            user.getId(),
                            user.getUsername(),
                            user.getFirst_name(),
                            user.getLast_name(),
                            user.getEmail(),
                            user.getAvatar(),
                            user.getPassword()
                    );
                    writer.write(insertStatement);
                    writer.newLine();
                }

                // Let's print and see if it worked!
                System.out.println("SQL INSERT statements written to " + sqlPath.toAbsolutePath());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

