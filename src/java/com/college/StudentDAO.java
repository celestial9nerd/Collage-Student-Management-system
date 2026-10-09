package com.college;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {

    // ==========================================
    // READ - Get all students
    // ==========================================
    public List<Student> getAllStudents() {

        List<Student> students = new ArrayList<Student>();

        String sql = "SELECT ENROLLMENT_NO, STUDENT_NAME, EMAIL, "
                   + "PHONE, BRANCH, SEMESTER, SECTION, CGPA "
                   + "FROM COLLEGE_STUDENT "
                   + "ORDER BY ENROLLMENT_NO";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Student student = new Student();

                student.setEnrollmentNo(
                        rs.getInt("ENROLLMENT_NO"));

                student.setStudentName(
                        rs.getString("STUDENT_NAME"));

                student.setEmail(
                        rs.getString("EMAIL"));

                student.setPhone(
                        rs.getString("PHONE"));

                student.setBranch(
                        rs.getString("BRANCH"));

                student.setSemester(
                        rs.getInt("SEMESTER"));

                student.setSection(
                        rs.getString("SECTION"));

                student.setCgpa(
                        rs.getDouble("CGPA"));

                students.add(student);
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return students;
    }


    // ==========================================
    // READ - Get one student by Enrollment No
    // ==========================================
    public Student getStudentById(int enrollmentNo) {

        Student student = null;

        String sql = "SELECT ENROLLMENT_NO, STUDENT_NAME, EMAIL, "
                   + "PHONE, BRANCH, SEMESTER, SECTION, CGPA "
                   + "FROM COLLEGE_STUDENT "
                   + "WHERE ENROLLMENT_NO = ?";

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, enrollmentNo);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                student = new Student();

                student.setEnrollmentNo(
                        rs.getInt("ENROLLMENT_NO"));

                student.setStudentName(
                        rs.getString("STUDENT_NAME"));

                student.setEmail(
                        rs.getString("EMAIL"));

                student.setPhone(
                        rs.getString("PHONE"));

                student.setBranch(
                        rs.getString("BRANCH"));

                student.setSemester(
                        rs.getInt("SEMESTER"));

                student.setSection(
                        rs.getString("SECTION"));

                student.setCgpa(
                        rs.getDouble("CGPA"));
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();
        }

        return student;
    }


    // ==========================================
    // CREATE - Add student
    // ==========================================
    public boolean addStudent(Student student) {

        String sql =
                "INSERT INTO COLLEGE_STUDENT "
              + "(ENROLLMENT_NO, STUDENT_NAME, EMAIL, PHONE, "
              + "BRANCH, SEMESTER, SECTION, CGPA) "
              + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try {

            Connection con =
                    DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, student.getEnrollmentNo());

            ps.setString(2, student.getStudentName());

            ps.setString(3, student.getEmail());

            ps.setString(4, student.getPhone());

            ps.setString(5, student.getBranch());

            ps.setInt(6, student.getSemester());

            ps.setString(7, student.getSection());

            ps.setDouble(8, student.getCgpa());

            int result = ps.executeUpdate();

            ps.close();
            con.close();

            return result > 0;

        } catch (Exception e) {

            e.printStackTrace();

            return false;
        }
    }


    // ==========================================
    // UPDATE - Update student
    // ==========================================
    public boolean updateStudent(Student student) {

        String sql =
                "UPDATE COLLEGE_STUDENT SET "
              + "STUDENT_NAME = ?, "
              + "EMAIL = ?, "
              + "PHONE = ?, "
              + "BRANCH = ?, "
              + "SEMESTER = ?, "
              + "SECTION = ?, "
              + "CGPA = ? "
              + "WHERE ENROLLMENT_NO = ?";

        try {

            Connection con =
                    DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1, student.getStudentName());

            ps.setString(2, student.getEmail());

            ps.setString(3, student.getPhone());

            ps.setString(4, student.getBranch());

            ps.setInt(5, student.getSemester());

            ps.setString(6, student.getSection());

            ps.setDouble(7, student.getCgpa());

            ps.setInt(8, student.getEnrollmentNo());

            int result = ps.executeUpdate();

            ps.close();
            con.close();

            return result > 0;

        } catch (Exception e) {

            e.printStackTrace();

            return false;
        }
    }


    // ==========================================
    // DELETE - Delete student
    // ==========================================
    public boolean deleteStudent(int enrollmentNo) {

        String sql =
                "DELETE FROM COLLEGE_STUDENT "
              + "WHERE ENROLLMENT_NO = ?";

        try {

            Connection con =
                    DBConnection.getConnection();

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1, enrollmentNo);

            int result = ps.executeUpdate();

            ps.close();
            con.close();

            return result > 0;

        } catch (Exception e) {

            e.printStackTrace();

            return false;
        }
    }
}