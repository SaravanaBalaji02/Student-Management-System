<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 20px;
        }
        h1 {
            color: #333;
        }
        .nav {
            margin: 20px 0;
        }
        .nav a {
            text-decoration: none;
            color: #007bff;
            font-size: 16px;
            margin: 0 15px;
        }
        .nav a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Welcome to the Student Management System</h1>
    <div class="nav">
        <a href="add_student.jsp">Add Student</a>
        <a href="listStudents">View Students</a>
        <a href="update_student_by_id.jsp">Update Student</a>
    </div>
</body>
</html>
