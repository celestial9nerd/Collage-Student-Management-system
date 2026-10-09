```jsp
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>

<head>

    <title>Add Student</title>

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
                    rgba(10, 20, 45, 0.88),
                    rgba(15, 25, 55, 0.92)
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

        .header .icon {

            font-size: 55px;

            margin-bottom: 10px;
        }

        .header h1 {

            font-size: 35px;

            margin-bottom: 8px;
        }

        .header p {

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

        .form-group.full {

            grid-column: 1 / 3;
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
                0 8px 20px rgba(0,0,0,0.3);
        }

        .back-btn {

            background: rgba(255,255,255,0.15);

            color: white;

            border: 1px solid rgba(255,255,255,0.3);
        }

        .back-btn:hover {

            background: rgba(255,255,255,0.25);
        }

        @media(max-width: 650px) {

            .form-grid {

                grid-template-columns: 1fr;
            }

            .form-group.full {

                grid-column: 1;
            }

            .container {

                padding: 25px;
            }

            .header h1 {

                font-size: 28px;
            }
        }

    </style>

</head>


<body>

<div class="container">

    <div class="header">

        <div class="icon">🎓</div>

        <h1>Add New Student</h1>

        <p>
            Enter the student's academic and contact information
        </p>

    </div>


    <form action="students" method="post">

        <input type="hidden"
               name="action"
               value="add">


        <div class="form-grid">


            <!-- ENROLLMENT -->

            <div class="form-group">

                <label>
                    Enrollment Number
                </label>

                <input type="number"
                       name="enrollmentNo"
                       placeholder="Enter enrollment number"
                       required>

            </div>


            <!-- NAME -->

            <div class="form-group">

                <label>
                    Student Name
                </label>

                <input type="text"
                       name="studentName"
                       placeholder="Enter student name"
                       required>

            </div>


            <!-- EMAIL -->

            <div class="form-group">

                <label>
                    Email
                </label>

                <input type="email"
                       name="email"
                       placeholder="student@example.com"
                       required>

            </div>


            <!-- PHONE -->

            <div class="form-group">

                <label>
                    Phone Number
                </label>

                <input type="text"
                       name="phone"
                       placeholder="Enter phone number"
                       maxlength="15"
                       required>

            </div>


            <!-- BRANCH -->

            <div class="form-group">

                <label>
                    Branch
                </label>

                <select name="branch" required>

                    <option value="">
                        Select Branch
                    </option>

                    <option value="CSE">
                        Computer Science & Engineering
                    </option>

                    <option value="IT">
                        Information Technology
                    </option>

                    <option value="ECE">
                        Electronics & Communication
                    </option>

                    <option value="ME">
                        Mechanical Engineering
                    </option>

                    <option value="CE">
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

                    <option value="">
                        Select Semester
                    </option>

                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>

                </select>

            </div>


            <!-- SECTION -->

            <div class="form-group">

                <label>
                    Section
                </label>

                <select name="section" required>

                    <option value="">
                        Select Section
                    </option>

                    <option value="A">A</option>
                    <option value="B">B</option>
                    <option value="C">C</option>
                    <option value="D">D</option>

                </select>

            </div>


            <!-- CGPA -->

            <div class="form-group">

                <label>
                    CGPA
                </label>

                <input type="number"
                       name="cgpa"
                       step="0.01"
                       min="0"
                       max="10"
                       placeholder="Example: 8.50"
                       required>

            </div>


        </div>


        <div class="buttons">

            <button type="submit">
                ➕ Add Student
            </button>

            <a href="index.jsp" class="back-btn">
                ← Back to Home
            </a>

        </div>

    </form>

</div>

</body>

</html>
```
