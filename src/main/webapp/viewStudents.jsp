<%@ page import="studentcrud.*" %>
<%@ page import="java.util.*" %>

<html>
<body>
<h2>View Students</h2>

<table border="1">
<tr>
    <th>Roll No</th>
    <th>Name</th>
    <th>Email</th>
    <th>Age</th>
    <th>Actions</th>
</tr>

<%
try {
    for (Student s : new StudentDAO().getAllStudents()) {
%>
<tr>
    <td><%= s.getRollNo() %></td>
    <td><%= s.getName() %></td>
    <td><%= s.getEmail() %></td>
    <td><%= s.getAge() %></td>
    <td>
        <a href="updateStudent.jsp?rollNo=<%= s.getRollNo() %>">Edit</a>
        |
        <a href="deleteStudent.jsp?rollNo=<%= s.getRollNo() %>">Delete</a>
    </td>
</tr>
<%
    }
} catch (Exception e) {
    out.println(e.getMessage());
}
%>

</table>

<a href="addStudent.jsp">Add Student</a>
</body>
</html>