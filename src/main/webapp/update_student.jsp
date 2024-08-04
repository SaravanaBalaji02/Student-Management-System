<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.dao.StudentDAO" %>
<%@ page import="com.example.model.Student" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Student</title>
</head>
<body>
    <%
        String idParam = request.getParameter("id");
        int id = 0;

        if (idParam != null && !idParam.isEmpty()) {
            try {
                id = Integer.parseInt(idParam);
            } catch (NumberFormatException e) {
                out.println("Invalid student ID.");
                return;
            }
        } else {
            out.println("Student ID is missing.");
            return;
        }

        StudentDAO studentDAO = new StudentDAO();
        Student student = null;
        try {
            student = studentDAO.getStudentById(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (student == null) {
            out.println("Student not found.");
            return;
        }
    %>
    <h2>Update Student</h2>
    <form action="updateStudent" method="post">
        <input type="hidden" name="id" value="<%= student.getId() %>">
        Name: <input type="text" name="name" value="<%= student.getName() %>" required><br>
        Email: <input type="email" name="email" value="<%= student.getEmail() %>" required><br>
        Age: <input type="number" name="age" value="<%= student.getAge() %>" required><br>
        <input type="submit" value="Update Student">
    </form>
    <a href="listStudents">Back to List</a>
</body>
</html>
