<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>

<head>

    <title>College Student Management</title>

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
                    rgba(8, 15, 35, 0.82),
                    rgba(8, 15, 35, 0.90)
                ),
                url("https://images.unsplash.com/photo-1562774053-701939374585?auto=format&fit=crop&w=1600&q=80");

            background-size: cover;
            background-position: center;

            display: flex;
            justify-content: center;
            align-items: center;

            color: white;
        }

        .container {

            width: 90%;
            max-width: 1000px;

            text-align: center;

            background: rgba(255, 255, 255, 0.10);

            border: 1px solid rgba(255,255,255,0.20);

            border-radius: 25px;

            padding: 60px 40px;

            backdrop-filter: blur(12px);

            box-shadow:
                0 20px 50px rgba(0,0,0,0.45);
        }

        .icon {

            font-size: 65px;

            margin-bottom: 15px;
        }

        h1 {

            font-size: 45px;

            margin-bottom: 15px;

            letter-spacing: 1px;
        }

        .subtitle {

            font-size: 19px;

            color: #d8e3ff;

            margin-bottom: 40px;
        }

        .cards {

            display: flex;

            justify-content: center;

            gap: 25px;

            flex-wrap: wrap;
        }

        .card {

            width: 260px;

            padding: 30px;

            background: rgba(255,255,255,0.12);

            border-radius: 18px;

            border: 1px solid rgba(255,255,255,0.20);

            transition: 0.3s;
        }

        .card:hover {

            transform: translateY(-8px);

            background: rgba(255,255,255,0.20);

            box-shadow:
                0 15px 35px rgba(0,0,0,0.35);
        }

        .card-icon {

            font-size: 45px;

            margin-bottom: 15px;
        }

        .card h2 {

            font-size: 22px;

            margin-bottom: 10px;
        }

        .card p {

            color: #d6dded;

            font-size: 14px;

            line-height: 1.5;

            margin-bottom: 22px;
        }

        .btn {

            display: inline-block;

            padding: 12px 25px;

            border-radius: 25px;

            background: #ffffff;

            color: #182848;

            text-decoration: none;

            font-weight: bold;

            transition: 0.3s;
        }

        .btn:hover {

            transform: scale(1.05);

            background: #e8eeff;
        }

        .footer {

            margin-top: 40px;

            font-size: 13px;

            color: #b8c2d9;
        }

    </style>

</head>


<body>

<div class="container">

    <div class="icon">🎓</div>

    <h1>College Student Management</h1>

    <p class="subtitle">
        Manage student records quickly, securely and efficiently
    </p>


    <div class="cards">


        <!-- VIEW STUDENTS -->

        <div class="card">

            <div class="card-icon">
                👨‍🎓
            </div>

            <h2>Student Records</h2>

            <p>
                View all registered students,
                their academic information,
                contact details and CGPA.
            </p>

            <a href="students" class="btn">
                View Students
            </a>

        </div>


        <!-- ADD STUDENT -->

        <div class="card">

            <div class="card-icon">
                ➕
            </div>

            <h2>Add Student</h2>

            <p>
                Register a new college student
                with enrollment, branch,
                semester and academic details.
            </p>

            <a href="addstudent.jsp" class="btn">
                Add Student
            </a>

        </div>


    </div>


    <div class="footer">

        College Student Management System
        <br>
        Java • JSP • Servlet • JDBC • Oracle

    </div>

</div>

</body>

</html>