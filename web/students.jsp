
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.college.Student" %>

<!DOCTYPE html>
<html>

<head>

    <title>Student Records</title>

    <style>

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        body {

            min-height: 100vh;

            background:
                linear-gradient(
                    rgba(8, 15, 35, 0.90),
                    rgba(10, 20, 45, 0.94)
                ),
                url("https://images.unsplash.com/photo-1498243691581-b145c3f54a5a?auto=format&fit=crop&w=1600&q=80");

            background-size: cover;
            background-position: center;
            background-attachment: fixed;

            color: white;

            padding: 35px;
        }

        .container {

            max-width: 1400px;

            margin: auto;
        }

        /* HEADER */

        .header {

            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-bottom: 30px;

            gap: 20px;

            flex-wrap: wrap;
        }

        .title-section {

            display: flex;

            align-items: center;

            gap: 15px;
        }

        .title-icon {

            font-size: 50px;
        }

        h1 {

            font-size: 34px;

            margin-bottom: 5px;
        }

        .subtitle {

            color: #c7d2eb;

            font-size: 14px;
        }

        .add-btn {

            text-decoration: none;

            background: white;

            color: #182848;

            padding: 13px 22px;

            border-radius: 25px;

            font-weight: bold;

            transition: 0.3s;
        }

        .add-btn:hover {

            transform: translateY(-2px);

            box-shadow:
                0 8px 20px rgba(0,0,0,0.35);
        }

        /* TABLE CARD */

        .table-card {

            background: rgba(255,255,255,0.10);

            border: 1px solid rgba(255,255,255,0.20);

            border-radius: 20px;

            padding: 25px;

            backdrop-filter: blur(12px);

            box-shadow:
                0 20px 50px rgba(0,0,0,0.40);

            overflow-x: auto;
        }

        table {

            width: 100%;

            border-collapse: collapse;

            min-width: 1000px;
        }

        th {

            background: rgba(255,255,255,0.15);

            color: white;

            padding: 16px 12px;

            text-align: left;

            font-size: 14px;

            white-space: nowrap;
        }

        td {

            padding: 15px 12px;

            border-bottom:
                1px solid rgba(255,255,255,0.10);

            color: #e8edff;

            font-size: 14px;
        }

        tr:hover td {

            background:
                rgba(255,255,255,0.07);
        }

        .enrollment {

            font-weight: bold;

            color: #ffffff;
        }

        .cgpa {

            font-weight: bold;

            color: #dfe8ff;
        }

        /* BRANCH BADGE */

        .branch {

            display: inline-block;

            padding: 5px 10px;

            border-radius: 15px;

            background: rgba(255,255,255,0.15);

            font-size: 12px;

            font-weight: bold;
        }

        /* ACTION BUTTONS */

        .actions {

            display: flex;

            gap: 8px;
        }

        .edit-btn,
        .delete-btn {

            display: inline-block;

            padding: 7px 13px;

            border-radius: 15px;

            text-decoration: none;

            font-size: 12px;

            font-weight: bold;

            transition: 0.3s;
        }

        .edit-btn {

            background: white;

            color: #182848;
        }

        .delete-btn {

            background: rgba(255,255,255,0.15);

            color: white;

            border: 1px solid rgba(255,255,255,0.25);
        }

        .edit-btn:hover,
        .delete-btn:hover {

            transform: translateY(-2px);
        }

        /* EMPTY MESSAGE */

        .empty {

            text-align: center;

            padding: 50px;

            color: #c7d2eb;
        }

        .empty-icon {

            font-size: 50px;

            margin-bottom: 15px;
        }

        /* FOOTER */

        .footer {

            text-align: center;

            margin-top: 25px;

            color: #aebbd5;

            font-size: 13px;
        }

        /* MOBILE */

        @media(max-width: 700px) {

            body {
                padding: 20px;
            }

            h1 {
                font-size: 27px;
            }

            .title-icon {
                font-size: 40px;
            }

            .table-card {
                padding: 15px;
            }
        }

    </style>

</head>


<body>

<div class="container">


    <!-- HEADER -->

    <div class="header">

        <div class="title-section">

            <div class="title-icon">
                🎓
            </div>

            <div>

                <h1>Student Records</h1>

                <p class="subtitle">
                    College Student Management System
                </p>

            </div>

        </div>


        <a href="addstudent.jsp" class="add-btn">
            ➕ Add Student
        </a>

    </div>


    <!-- TABLE -->

    <div class="table-card">

        <%
            List<Student> students =
                    (List<Student>) request.getAttribute("students");

            if (students != null && !students.isEmpty()) {
        %>


        <table>

            <thead>

                <tr>

                    <th>Enrollment</th>

                    <th>Name</th>

                    <th>Email</th>

                    <th>Phone</th>

                    <th>Branch</th>

                    <th>Semester</th>

                    <th>Section</th>

                    <th>CGPA</th>

                    <th>Actions</th>

                </tr>

            </thead>


            <tbody>

            <%
                for (Student student : students) {
            %>

                <tr>

                    <td class="enrollment">
                        <%= student.getEnrollmentNo() %>
                    </td>

                    <td>
                        <%= student.getStudentName() %>
                    </td>

                    <td>
                        <%= student.getEmail() %>
                    </td>

                    <td>
                        <%= student.getPhone() %>
                    </td>

                    <td>

                        <span class="branch">
                            <%= student.getBranch() %>
                        </span>

                    </td>

                    <td>
                        <%= student.getSemester() %>
                    </td>

                    <td>
                        <%= student.getSection() %>
                    </td>

                    <td class="cgpa">
                        <%= student.getCgpa() %>
                    </td>


                    <td>

                        <div class="actions">


                            <!-- EDIT -->

                            <a
                                href="students?action=edit&enrollmentNo=<%= student.getEnrollmentNo() %>"
                                class="edit-btn">

                                ✏ Edit

                            </a>


                            <!-- DELETE -->

                            <a
                                href="students?action=delete&enrollmentNo=<%= student.getEnrollmentNo() %>"
                                class="delete-btn"
                                onclick="return confirm('Are you sure you want to delete this student?');">

                                🗑 Delete

                            </a>


                        </div>

                    </td>

                </tr>


            <%
                }
            %>

            </tbody>

        </table>


        <%
            } else {
        %>


            <div class="empty">

                <div class="empty-icon">
                    👨‍🎓
                </div>

                <h2>No Students Found</h2>

                <p>
                    Add your first student to the system.
                </p>

            </div>


        <%
            }
        %>

    </div>


    <div class="footer">

        College Student Management System
        <br>
        Java • JSP • Servlet • JDBC • Oracle

    </div>


</div>

</body>

</html>
