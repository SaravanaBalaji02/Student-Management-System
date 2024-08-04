<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.model.Student" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List Students</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h2>Student List</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Age</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Student> students = (List<Student>) request.getAttribute("students");
                if (students != null && !students.isEmpty()) {
                    for (Student student : students) {
                        %>
                        <tr>
                            <td><%= student.getId() %></td>
                            <td><%= student.getName() %></td>
                            <td><%= student.getEmail() %></td>
                            <td><%= student.getAge() %></td>
                            <td>
                                <a href="update_student.jsp?id=<%= student.getId() %>">Edit</a> 
                            </td>
                        </tr>
                        <%
                    }
                } else {
                    %>
                    <tr>
                        <td colspan="5">No students found.</td>
                    </tr>
                    <%
                }
            %>
        </tbody>
    </table>
    <a href="add_student.jsp">Add Student</a>
</body>
</html>
