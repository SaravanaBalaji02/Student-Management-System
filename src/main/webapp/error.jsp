<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
</head>
<body>
    <h1>An error occurred</h1>
    <p><%= request.getAttribute("errorMessage") %></p>
    <a href="add_student.jsp">Back to Add Student</a> | <a href="listStudents">Back to Student List</a>
</body>
</html>
