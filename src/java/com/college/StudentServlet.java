package com.college;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/students")
public class StudentServlet extends HttpServlet {

    // ==========================================
    // GET REQUEST
    // Used for VIEW, EDIT and DELETE
    // ==========================================
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        try {

            String action = request.getParameter("action");

            StudentDAO dao = new StudentDAO();


            // ==================================
            // EDIT
            // ==================================
            if ("edit".equals(action)) {

                String enrollment =
                        request.getParameter("enrollmentNo");

                int enrollmentNo =
                        Integer.parseInt(enrollment);

                Student student =
                        dao.getStudentById(enrollmentNo);

                request.setAttribute(
                        "student",
                        student
                );

                request.getRequestDispatcher(
                        "editstudent.jsp"
                ).forward(request, response);

                return;
            }


            // ==================================
            // DELETE
            // ==================================
            if ("delete".equals(action)) {

                String enrollment =
                        request.getParameter("enrollmentNo");

                int enrollmentNo =
                        Integer.parseInt(enrollment);

                dao.deleteStudent(enrollmentNo);

                response.sendRedirect("students");

                return;
            }


            // ==================================
            // VIEW ALL STUDENTS
            // ==================================

            List<Student> students =
                    dao.getAllStudents();

            request.setAttribute(
                    "students",
                    students
            );

            request.getRequestDispatcher(
                    "students.jsp"
            ).forward(request, response);


        } catch (Exception e) {

            e.printStackTrace();

            response.setContentType("text/html");

            response.getWriter().println(
                    "<h2>Student Management Error</h2>"
            );

            response.getWriter().println(
                    "<p>" + e.getMessage() + "</p>"
            );
        }
    }


    // ==========================================
    // POST REQUEST
    // Used for ADD and UPDATE
    // ==========================================
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        try {

            String action =
                    request.getParameter("action");


            // ==================================
            // GET FORM DATA
            // ==================================

            int enrollmentNo =
                    Integer.parseInt(
                            request.getParameter(
                                    "enrollmentNo"
                            )
                    );

            String studentName =
                    request.getParameter(
                            "studentName"
                    );

            String email =
                    request.getParameter(
                            "email"
                    );

            String phone =
                    request.getParameter(
                            "phone"
                    );

            String branch =
                    request.getParameter(
                            "branch"
                    );

            int semester =
                    Integer.parseInt(
                            request.getParameter(
                                    "semester"
                            )
                    );

            String section =
                    request.getParameter(
                            "section"
                    );

            double cgpa =
                    Double.parseDouble(
                            request.getParameter(
                                    "cgpa"
                            )
                    );


            // ==================================
            // CREATE STUDENT OBJECT
            // ==================================

            Student student =
                    new Student(
                            enrollmentNo,
                            studentName,
                            email,
                            phone,
                            branch,
                            semester,
                            section,
                            cgpa
                    );


            StudentDAO dao =
                    new StudentDAO();


            // ==================================
            // UPDATE
            // ==================================

            if ("update".equals(action)) {

                dao.updateStudent(student);

            }

            // ==================================
            // CREATE / ADD
            // ==================================

            else {

                dao.addStudent(student);

            }


            // ==================================
            // RETURN TO STUDENT LIST
            // ==================================

            response.sendRedirect("students");


        } catch (Exception e) {

            e.printStackTrace();

            response.setContentType("text/html");

            response.getWriter().println(
                    "<h2>Student Management Error</h2>"
            );

            response.getWriter().println(
                    "<p>" + e.getMessage() + "</p>"
            );
        }
    }
}