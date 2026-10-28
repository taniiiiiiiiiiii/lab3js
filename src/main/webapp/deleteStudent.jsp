<%@ page import="studentcrud.*" %>

<%
try {
    int r = Integer.parseInt(request.getParameter("rollNo"));
    new StudentDAO().deleteStudent(r);

    out.println("Student deleted successfully.");

} catch (Exception e) {
    out.println("Error: " + e.getMessage());
}
%>

<html>
<body>
<br>
<a href="viewStudents.jsp">View Students</a>
</body>
</html>