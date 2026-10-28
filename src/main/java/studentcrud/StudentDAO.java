
package studentcrud;

import java.sql.*;
import java.util.*;

public class StudentDAO {

    public void addStudent(Student s) throws Exception {
        Connection c = DBConnection.getConnection();
        PreparedStatement p = c.prepareStatement(
            "INSERT INTO students VALUES(?,?,?,?)");

        p.setInt(1, s.getRollNo());
        p.setString(2, s.getName());
        p.setString(3, s.getEmail());
        p.setInt(4, s.getAge());

        p.executeUpdate();
        c.close();
    }

    public ArrayList<Student> getAllStudents() throws Exception {
        ArrayList<Student> list = new ArrayList<>();
        Connection c = DBConnection.getConnection();

        ResultSet r = c.createStatement().executeQuery(
            "SELECT * FROM students");

        while (r.next()) {
            Student s = new Student();
            s.setRollNo(r.getInt("roll_no"));
            s.setName(r.getString("name"));
            s.setEmail(r.getString("email"));
            s.setAge(r.getInt("age"));
            list.add(s);
        }

        c.close();
        return list;
    }

    public void updateStudent(Student s) throws Exception {
        Connection c = DBConnection.getConnection();
        PreparedStatement p = c.prepareStatement(
            "UPDATE students SET name=?, email=?, age=? WHERE roll_no=?");

        p.setString(1, s.getName());
        p.setString(2, s.getEmail());
        p.setInt(3, s.getAge());
        p.setInt(4, s.getRollNo());

        p.executeUpdate();
        c.close();
    }

    public void deleteStudent(int r) throws Exception {
        Connection c = DBConnection.getConnection();
        PreparedStatement p = c.prepareStatement(
            "DELETE FROM students WHERE roll_no=?");

        p.setInt(1, r);
        p.executeUpdate();
        c.close();
    }
}