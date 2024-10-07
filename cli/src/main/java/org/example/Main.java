package org.example;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;
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

            for (User user : users) {
                System.out.println("ID: " + user.getId());
                System.out.println("Username: " + user.getUsername());
                System.out.println("First Name: " + user.getFirst_name());
                System.out.println("Last Name: " + user.getLast_name());
                System.out.println("Email: " + user.getEmail());
                System.out.println("Avatar: " + user.getAvatar());
                System.out.println("Password: " + user.getPassword());
                System.out.println("----------");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

