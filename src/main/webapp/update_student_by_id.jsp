<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Student</title>
</head>
<body>
    <h2>Update Student by ID</h2>
    <form action="update_student.jsp" method="get">
        Enter Student ID: <input type="text" name="id" required><br>
        <input type="submit" value="Update Student">
    </form>
    <a href="index.jsp">Back to Home</a>
</body>
</html>
