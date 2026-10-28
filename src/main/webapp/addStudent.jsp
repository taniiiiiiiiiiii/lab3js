<%@ page import="studentcrud.*" %>

<%
if (request.getParameter("rollNo") != null) {
    try {
        Student s = new Student();

        s.setRollNo(Integer.parseInt(request.getParameter("rollNo")));
        s.setName(request.getParameter("name"));
        s.setEmail(request.getParameter("email"));
        s.setAge(Integer.parseInt(request.getParameter("age")));

        new StudentDAO().addStudent(s);
        out.println("Student added successfully.");

    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
}
%>

<html>
<body>
<h2>Add Student</h2>

<form method="post" action="addStudent.jsp">
    Roll No: <input name="rollNo"><br>
    Name: <input name="name"><br>
    Email: <input name="email"><br>
    Age: <input name="age"><br>
    <input type="submit" value="Add Student">
</form>

<a href="viewStudents.jsp">View Students</a>
</body>
</html>