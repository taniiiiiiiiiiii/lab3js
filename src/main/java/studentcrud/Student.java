package studentcrud;

public class Student {
    int rollNo, age;
    String name, email;

    // Getters
    public int getRollNo() {
        return rollNo;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public int getAge() {
        return age;
    }

    // Setters
    public void setRollNo(int r) {
        rollNo = r;
    }

    public void setName(String n) {
        name = n;
    }

    public void setEmail(String e) {
        email = e;
    }

    public void setAge(int a) {
        age = a;
    }
}