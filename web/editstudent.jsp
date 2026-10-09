```jsp
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.college.Student" %>

<%
    Student student =
            (Student) request.getAttribute("student");

    if (student == null) {
%>

        <h2>Student not found.</h2>

        <a href="students">
            Back to Student Records
        </a>

<%
        return;
    }
%>

<!DOCTYPE html>

<html>

<head>

    <title>Edit Student</title>

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
                    rgba(15, 25, 55, 0.94)
                ),
                url("https://images.unsplash.com/photo-1523050854058-8df90110c9f1?auto=format&fit=crop&w=1600&q=80");

            background-size: cover;

            background-position: center;

            display: flex;

            justify-content: center;

            align-items: center;

            padding: 30px;

            color: white;
        }

        .container {

            width: 100%;

            max-width: 850px;

            background: rgba(255,255,255,0.10);

            border: 1px solid rgba(255,255,255,0.20);

            border-radius: 25px;

            padding: 40px;

            backdrop-filter: blur(14px);

            box-shadow:
                0 20px 50px rgba(0,0,0,0.45);
        }

        .header {

            text-align: center;

            margin-bottom: 30px;
        }

        .icon {

            font-size: 55px;

            margin-bottom: 10px;
        }

        h1 {

            font-size: 35px;

            margin-bottom: 8px;
        }

        .subtitle {

            color: #cbd5ed;

            font-size: 15px;
        }

        .form-grid {

            display: grid;

            grid-template-columns: 1fr 1fr;

            gap: 20px;
        }

        .form-group {

            display: flex;

            flex-direction: column;
        }

        label {

            margin-bottom: 8px;

            font-weight: bold;

            color: #e8edff;
        }

        input,
        select {

            width: 100%;

            padding: 13px 15px;

            border: none;

            outline: none;

            border-radius: 10px;

            background: rgba(255,255,255,0.95);

            color: #182848;

            font-size: 15px;
        }

        input:focus,
        select:focus {

            box-shadow:
                0 0 0 3px rgba(255,255,255,0.25);
        }

        input[readonly] {

            background: rgba(220,225,235,0.85);

            color: #555;

            cursor: not-allowed;
        }

        .buttons {

            margin-top: 30px;

            display: flex;

            justify-content: center;

            gap: 15px;

            flex-wrap: wrap;
        }

        button,
        .back-btn {

            padding: 13px 28px;

            border: none;

            border-radius: 25px;

            font-weight: bold;

            font-size: 15px;

            cursor: pointer;

            text-decoration: none;

            transition: 0.3s;
        }

        button {

            background: white;

            color: #182848;
        }

        button:hover {

            transform: translateY(-2px);

            box-shadow:
                0 8px 20px rgba(0,0,0,0.30);
        }

        .back-btn {

            background: rgba(255,255,255,0.15);

            color: white;

            border: 1px solid rgba(255,255,255,0.30);
        }

        .back-btn:hover {

            background: rgba(255,255,255,0.25);
        }

        @media(max-width: 650px) {

            .form-grid {

                grid-template-columns: 1fr;
            }

            .container {

                padding: 25px;
            }

            h1 {

                font-size: 28px;
            }
        }

    </style>

</head>


<body>

<div class="container">


    <div class="header">

        <div class="icon">
            ✏️
        </div>

        <h1>Edit Student</h1>

        <p class="subtitle">
            Update the student's information
        </p>

    </div>


    <form action="students" method="post">

        <!-- Tell servlet this is UPDATE -->

        <input type="hidden"
               name="action"
               value="update">


        <div class="form-grid">


            <!-- ENROLLMENT NUMBER -->

            <div class="form-group">

                <label>
                    Enrollment Number
                </label>

                <input
                    type="number"
                    name="enrollmentNo"
                    value="<%= student.getEnrollmentNo() %>"
                    readonly>

            </div>


            <!-- STUDENT NAME -->

            <div class="form-group">

                <label>
                    Student Name
                </label>

                <input
                    type="text"
                    name="studentName"
                    value="<%= student.getStudentName() %>"
                    required>

            </div>


            <!-- EMAIL -->

            <div class="form-group">

                <label>
                    Email
                </label>

                <input
                    type="email"
                    name="email"
                    value="<%= student.getEmail() %>"
                    required>

            </div>


            <!-- PHONE -->

            <div class="form-group">

                <label>
                    Phone Number
                </label>

                <input
                    type="text"
                    name="phone"
                    value="<%= student.getPhone() %>"
                    maxlength="15"
                    required>

            </div>


            <!-- BRANCH -->

            <div class="form-group">

                <label>
                    Branch
                </label>

                <select name="branch" required>

                    <option value="CSE"
                        <%= "CSE".equals(student.getBranch())
                            ? "selected" : "" %>>
                        Computer Science & Engineering
                    </option>

                    <option value="IT"
                        <%= "IT".equals(student.getBranch())
                            ? "selected" : "" %>>
                        Information Technology
                    </option>

                    <option value="ECE"
                        <%= "ECE".equals(student.getBranch())
                            ? "selected" : "" %>>
                        Electronics & Communication
                    </option>

                    <option value="ME"
                        <%= "ME".equals(student.getBranch())
                            ? "selected" : "" %>>
                        Mechanical Engineering
                    </option>

                    <option value="CE"
                        <%= "CE".equals(student.getBranch())
                            ? "selected" : "" %>>
                        Civil Engineering
                    </option>

                </select>

            </div>


            <!-- SEMESTER -->

            <div class="form-group">

                <label>
                    Semester
                </label>

                <select name="semester" required>

                    <option value="1"
                        <%= student.getSemester() == 1
                            ? "selected" : "" %>>
                        1
                    </option>

                    <option value="2"
                        <%= student.getSemester() == 2
                            ? "selected" : "" %>>
                        2
                    </option>

                    <option value="3"
                        <%= student.getSemester() == 3
                            ? "selected" : "" %>>
                        3
                    </option>

                    <option value="4"
                        <%= student.getSemester() == 4
                            ? "selected" : "" %>>
                        4
                    </option>

                    <option value="5"
                        <%= student.getSemester() == 5
                            ? "selected" : "" %>>
                        5
                    </option>

                    <option value="6"
                        <%= student.getSemester() == 6
                            ? "selected" : "" %>>
                        6
                    </option>

                    <option value="7"
                        <%= student.getSemester() == 7
                            ? "selected" : "" %>>
                        7
                    </option>

                    <option value="8"
                        <%= student.getSemester() == 8
                            ? "selected" : "" %>>
                        8
                    </option>

                </select>

            </div>


            <!-- SECTION -->

            <div class="form-group">

                <label>
                    Section
                </label>

                <select name="section" required>

                    <option value="A"
                        <%= "A".equals(student.getSection())
                            ? "selected" : "" %>>
                        A
                    </option>

                    <option value="B"
                        <%= "B".equals(student.getSection())
                            ? "selected" : "" %>>
                        B
                    </option>

                    <option value="C"
                        <%= "C".equals(student.getSection())
                            ? "selected" : "" %>>
                        C
                    </option>

                    <option value="D"
                        <%= "D".equals(student.getSection())
                            ? "selected" : "" %>>
                        D
                    </option>

                </select>

            </div>


            <!-- CGPA -->

            <div class="form-group">

                <label>
                    CGPA
                </label>

                <input
                    type="number"
                    name="cgpa"
                    value="<%= student.getCgpa() %>"
                    step="0.01"
                    min="0"
                    max="10"
                    required>

            </div>


        </div>


        <div class="buttons">

            <button type="submit">
                💾 Update Student
            </button>

            <a href="students" class="back-btn">
                ← Back to Students
            </a>

        </div>

    </form>

</div>

</body>

</html>
```
