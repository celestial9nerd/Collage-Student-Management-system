package com.college;

public class Student {

    private int enrollmentNo;
    private String studentName;
    private String email;
    private String phone;
    private String branch;
    private int semester;
    private String section;
    private double cgpa;

    public Student() {
    }

    public Student(int enrollmentNo,
                   String studentName,
                   String email,
                   String phone,
                   String branch,
                   int semester,
                   String section,
                   double cgpa) {

        this.enrollmentNo = enrollmentNo;
        this.studentName = studentName;
        this.email = email;
        this.phone = phone;
        this.branch = branch;
        this.semester = semester;
        this.section = section;
        this.cgpa = cgpa;
    }

    public int getEnrollmentNo() {
        return enrollmentNo;
    }

    public void setEnrollmentNo(int enrollmentNo) {
        this.enrollmentNo = enrollmentNo;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public int getSemester() {
        return semester;
    }

    public void setSemester(int semester) {
        this.semester = semester;
    }

    public String getSection() {
        return section;
    }

    public void setSection(String section) {
        this.section = section;
    }

    public double getCgpa() {
        return cgpa;
    }

    public void setCgpa(double cgpa) {
        this.cgpa = cgpa;
    }
}