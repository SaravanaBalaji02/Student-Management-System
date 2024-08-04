package com.example.dao;

import com.example.model.Student;
import com.example.util.DatabaseUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {

    public void addStudent(Student student) throws SQLException {
    	 String query = "INSERT INTO students (id, name, email, age) VALUES (?, ?, ?, ?)";
         try (Connection connection = DatabaseUtil.getConnection();
              PreparedStatement preparedStatement = connection.prepareStatement(query)) {
             preparedStatement.setInt(1, student.getId());
             preparedStatement.setString(2, student.getName());
             preparedStatement.setString(3, student.getEmail());
             preparedStatement.setInt(4, student.getAge());
             preparedStatement.executeUpdate();
        }
    }

    public List<Student> listStudents() throws SQLException {
        List<Student> students = new ArrayList<>();
        String query = "SELECT * FROM students";
        try (Connection connection = DatabaseUtil.getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {
            while (resultSet.next()) {
                Student student = new Student(
                    resultSet.getInt("id"),
                    resultSet.getString("name"),
                    resultSet.getString("email"),
                    resultSet.getInt("age")
                );
                students.add(student);
            }
        }
        return students;
    }

    public Student getStudentById(int id) throws SQLException {
        String query = "SELECT * FROM students WHERE id = ?";
        try (Connection connection = DatabaseUtil.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, id);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    return new Student(
                        resultSet.getInt("id"),
                        resultSet.getString("name"),
                        resultSet.getString("email"),
                        resultSet.getInt("age")
                    );
                }
            }
        }
        return null;
    }

    public void updateStudent(Student student) throws SQLException {
        String query = "UPDATE students SET name = ?, email = ?, age = ? WHERE id = ?";
        try (Connection connection = DatabaseUtil.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, student.getName());
            preparedStatement.setString(2, student.getEmail());
            preparedStatement.setInt(3, student.getAge());
            preparedStatement.setInt(4, student.getId());
            preparedStatement.executeUpdate();
        }
    }

  
    
}
