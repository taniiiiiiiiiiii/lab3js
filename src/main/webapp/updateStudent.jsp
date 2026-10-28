<%@ page import="studentcrud.*" %>

<%
try {
    int r = Integer.parseInt(request.getParameter("rollNo"));
    StudentDAO dao = new StudentDAO();
    Student s = null;

    for (Student x : dao.getAllStudents()) {
        if (x.getRollNo() == r)
            s = x;
    }

    if (s == null) {
        out.println("Student not found.");
    } else {
        if (request.getParameter("name") != null) {
            s.setName(request.getParameter("name"));
            s.setEmail(request.getParameter("email"));
            s.setAge(Integer.parseInt(request.getParameter("age")));

            dao.updateStudent(s);
            out.println("Student updated successfully.<br>");
        }
%>

<html>
<body>
<h2>Update Student</h2>

<form method="post" action="updateStudent.jsp?rollNo=<%= r %>">
    Name: <input name="name" value="<%= s.getName() %>"><br>
    Email: <input name="email" value="<%= s.getEmail() %>"><br>
    Age: <input name="age" value="<%= s.getAge() %>"><br>
    <input type="submit" value="Update Student">
</form>

<a href="viewStudents.jsp">View Students</a>
</body>
</html>

<%
    }
} catch (Exception e) {
    out.println("Error: " + e.getMessage());
}
%>