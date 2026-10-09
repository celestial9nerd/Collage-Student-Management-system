```jsp
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>

<head>

    <title>College Student Management Dashboard</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            min-height: 100vh;

            background:
                linear-gradient(
                    135deg,
                    rgba(7, 15, 35, 0.96),
                    rgba(20, 35, 70, 0.92)
                ),
                url("https://images.unsplash.com/photo-1523240795612-9a054b0db644?auto=format&fit=crop&w=1800&q=80");

            background-size: cover;
            background-position: center;
            background-attachment: fixed;

            color: white;
        }


        /* ==============================
           SIDEBAR
           ============================== */

        .sidebar {

            position: fixed;

            left: 0;
            top: 0;

            width: 245px;
            height: 100vh;

            background: rgba(8, 15, 35, 0.92);

            border-right:
                1px solid rgba(255,255,255,0.12);

            backdrop-filter: blur(15px);

            padding: 25px 18px;

            z-index: 10;
        }


        .logo {

            text-align: center;

            padding-bottom: 30px;

            border-bottom:
                1px solid rgba(255,255,255,0.12);

            margin-bottom: 25px;
        }


        .logo-icon {

            font-size: 45px;

            margin-bottom: 8px;
        }


        .logo h2 {

            font-size: 20px;

            letter-spacing: 1px;
        }


        .logo p {

            font-size: 11px;

            color: #9eacce;

            margin-top: 5px;
        }


        .menu-title {

            font-size: 11px;

            color: #8190ad;

            text-transform: uppercase;

            letter-spacing: 1.5px;

            margin:
                20px 12px 10px;
        }


        .menu a {

            display: flex;

            align-items: center;

            gap: 13px;

            padding: 13px 15px;

            margin-bottom: 6px;

            border-radius: 10px;

            color: #dce5f7;

            text-decoration: none;

            font-size: 14px;

            transition: 0.3s;
        }


        .menu a:hover {

            background:
                rgba(255,255,255,0.10);

            transform: translateX(4px);

            color: white;
        }


        .menu a.active {

            background:
                rgba(255,255,255,0.15);

            color: white;

            border-left:
                3px solid white;
        }


        .menu-icon {

            width: 24px;

            text-align: center;

            font-size: 18px;
        }


        /* ==============================
           MAIN CONTENT
           ============================== */

        .main {

            margin-left: 245px;

            padding: 35px;

            min-height: 100vh;
        }


        /* TOP BAR */

        .topbar {

            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-bottom: 35px;
        }


        .welcome h1 {

            font-size: 32px;

            margin-bottom: 7px;
        }


        .welcome p {

            color: #aebbd3;

            font-size: 14px;
        }


        .profile {

            display: flex;

            align-items: center;

            gap: 12px;

            background:
                rgba(255,255,255,0.08);

            border:
                1px solid rgba(255,255,255,0.12);

            padding: 9px 15px;

            border-radius: 30px;
        }


        .profile-icon {

            width: 38px;

            height: 38px;

            border-radius: 50%;

            background: white;

            color: #182848;

            display: flex;

            justify-content: center;

            align-items: center;

            font-size: 18px;
        }


        .profile-text strong {

            font-size: 13px;

            display: block;
        }


        .profile-text span {

            color: #8e9bb4;

            font-size: 11px;
        }


        /* ==============================
           STAT CARDS
           ============================== */

        .stats {

            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 20px;

            margin-bottom: 25px;
        }


        .stat-card {

            padding: 23px;

            background:
                rgba(255,255,255,0.09);

            border:
                1px solid rgba(255,255,255,0.14);

            border-radius: 18px;

            backdrop-filter: blur(10px);

            transition: 0.3s;
        }


        .stat-card:hover {

            transform: translateY(-5px);

            background:
                rgba(255,255,255,0.13);
        }


        .stat-top {

            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-bottom: 18px;
        }


        .stat-icon {

            width: 45px;

            height: 45px;

            border-radius: 12px;

            background:
                rgba(255,255,255,0.13);

            display: flex;

            justify-content: center;

            align-items: center;

            font-size: 21px;
        }


        .stat-label {

            color: #aebbd3;

            font-size: 12px;
        }


        .stat-number {

            font-size: 29px;

            font-weight: bold;

            margin-top: 5px;
        }


        /* ==============================
           CONTENT GRID
           ============================== */

        .content-grid {

            display: grid;

            grid-template-columns: 2fr 1fr;

            gap: 25px;

            margin-bottom: 25px;
        }


        .panel {

            background:
                rgba(255,255,255,0.09);

            border:
                1px solid rgba(255,255,255,0.14);

            border-radius: 20px;

            padding: 25px;

            backdrop-filter: blur(10px);
        }


        .panel-header {

            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-bottom: 22px;
        }


        .panel-header h2 {

            font-size: 18px;
        }


        .panel-header span {

            color: #91a1bd;

            font-size: 12px;
        }


        /* ==============================
           QUICK ACTIONS
           ============================== */

        .actions {

            display: grid;

            grid-template-columns:
                repeat(2, 1fr);

            gap: 14px;
        }


        .action {

            padding: 20px;

            border-radius: 14px;

            background:
                rgba(255,255,255,0.07);

            border:
                1px solid rgba(255,255,255,0.10);

            text-decoration: none;

            color: white;

            transition: 0.3s;
        }


        .action:hover {

            background:
                rgba(255,255,255,0.14);

            transform: translateY(-4px);
        }


        .action-icon {

            font-size: 30px;

            margin-bottom: 12px;
        }


        .action h3 {

            font-size: 14px;

            margin-bottom: 6px;
        }


        .action p {

            color: #9facbf;

            font-size: 11px;

            line-height: 1.5;
        }


        /* ==============================
           SYSTEM INFO
           ============================== */

        .info-row {

            display: flex;

            justify-content: space-between;

            padding: 14px 0;

            border-bottom:
                1px solid rgba(255,255,255,0.08);
        }


        .info-row:last-child {

            border-bottom: none;
        }


        .info-label {

            color: #9facbf;

            font-size: 13px;
        }


        .info-value {

            font-size: 13px;

            font-weight: bold;
        }


        .status {

            display: inline-flex;

            align-items: center;

            gap: 6px;

            color: #d9e5ff;
        }


        .status-dot {

            width: 8px;

            height: 8px;

            border-radius: 50%;

            background: #8fd3a8;

            box-shadow:
                0 0 8px rgba(143,211,168,0.7);
        }


        /* ==============================
           BOTTOM PANEL
           ============================== */

        .bottom-panel {

            background:
                rgba(255,255,255,0.09);

            border:
                1px solid rgba(255,255,255,0.14);

            border-radius: 20px;

            padding: 25px;

            backdrop-filter: blur(10px);
        }


        .bottom-content {

            display: flex;

            justify-content: space-between;

            align-items: center;

            gap: 20px;
        }


        .bottom-content h2 {

            font-size: 18px;

            margin-bottom: 7px;
        }


        .bottom-content p {

            color: #9facbf;

            font-size: 13px;
        }


        .view-btn {

            display: inline-block;

            text-decoration: none;

            padding: 12px 22px;

            border-radius: 25px;

            background: white;

            color: #182848;

            font-size: 13px;

            font-weight: bold;

            transition: 0.3s;
        }


        .view-btn:hover {

            transform: translateY(-2px);

            box-shadow:
                0 8px 20px rgba(0,0,0,0.3);
        }


        /* ==============================
           FOOTER
           ============================== */

        .footer {

            text-align: center;

            color: #74829c;

            font-size: 11px;

            margin-top: 25px;
        }


        /* ==============================
           RESPONSIVE
           ============================== */

        @media(max-width: 1100px) {

            .stats {

                grid-template-columns:
                    repeat(2, 1fr);
            }

            .content-grid {

                grid-template-columns: 1fr;
            }
        }


        @media(max-width: 750px) {

            .sidebar {

                position: relative;

                width: 100%;

                height: auto;
            }

            .main {

                margin-left: 0;

                padding: 20px;
            }

            .stats {

                grid-template-columns: 1fr;
            }

            .topbar {

                flex-direction: column;

                align-items: flex-start;

                gap: 15px;
            }

            .actions {

                grid-template-columns: 1fr;
            }
        }

    </style>

</head>


<body>


<!-- ==========================================
     SIDEBAR
     ========================================== -->

<div class="sidebar">


    <div class="logo">

        <div class="logo-icon">
            🎓
        </div>

        <h2>EduManage</h2>

        <p>COLLEGE MANAGEMENT SYSTEM</p>

    </div>


    <div class="menu-title">
        Main Menu
    </div>


    <div class="menu">

        <a href="dashboard.jsp" class="active">

            <span class="menu-icon">🏠</span>

            Dashboard

        </a>


        <a href="students">

            <span class="menu-icon">👨‍🎓</span>

            Students

        </a>


        <a href="addstudent.jsp">

            <span class="menu-icon">➕</span>

            Add Student

        </a>

    </div>


    <div class="menu-title">
        Management
    </div>


    <div class="menu">

        <a href="students">

            <span class="menu-icon">📋</span>

            Student Records

        </a>


        <a href="index.jsp">

            <span class="menu-icon">🌐</span>

            Home Website

        </a>

    </div>


</div>


<!-- ==========================================
     MAIN
     ========================================== -->

<div class="main">


    <!-- TOP BAR -->

    <div class="topbar">


        <div class="welcome">

            <h1>Dashboard</h1>

            <p>
                Welcome to your College Student Management System
            </p>

        </div>


        <div class="profile">

            <div class="profile-icon">
                👤
            </div>

            <div class="profile-text">

                <strong>Administrator</strong>

                <span>College Admin</span>

            </div>

        </div>


    </div>



    <!-- ==========================================
         STAT CARDS
         ========================================== -->

    <div class="stats">


        <div class="stat-card">

            <div class="stat-top">

                <div>

                    <div class="stat-label">
                        Total Students
                    </div>

                    <div class="stat-number">
                        —
                    </div>

                </div>

                <div class="stat-icon">
                    👨‍🎓
                </div>

            </div>

        </div>


        <div class="stat-card">

            <div class="stat-top">

                <div>

                    <div class="stat-label">
                        Departments
                    </div>

                    <div class="stat-number">
                        5
                    </div>

                </div>

                <div class="stat-icon">
                    🏫
                </div>

            </div>

        </div>


        <div class="stat-card">

            <div class="stat-top">

                <div>

                    <div class="stat-label">
                        Semesters
                    </div>

                    <div class="stat-number">
                        8
                    </div>

                </div>

                <div class="stat-icon">
                    📚
                </div>

            </div>

        </div>


        <div class="stat-card">

            <div class="stat-top">

                <div>

                    <div class="stat-label">
                        System Status
                    </div>

                    <div class="stat-number">
                        ✓
                    </div>

                </div>

                <div class="stat-icon">
                    ⚡
                </div>

            </div>

        </div>


    </div>



    <!-- ==========================================
         MAIN CONTENT
         ========================================== -->

    <div class="content-grid">


        <!-- QUICK ACTIONS -->

        <div class="panel">

            <div class="panel-header">

                <h2>Quick Actions</h2>

                <span>Manage students</span>

            </div>


            <div class="actions">


                <a href="addstudent.jsp"
                   class="action">

                    <div class="action-icon">
                        ➕
                    </div>

                    <h3>Add New Student</h3>

                    <p>
                        Register a new student
                        in the college database.
                    </p>

                </a>


                <a href="students"
                   class="action">

                    <div class="action-icon">
                        👨‍🎓
                    </div>

                    <h3>View Students</h3>

                    <p>
                        View and manage all
                        registered student records.
                    </p>

                </a>


                <a href="students"
                   class="action">

                    <div class="action-icon">
                        ✏️
                    </div>

                    <h3>Edit Records</h3>

                    <p>
                        Update student academic
                        and contact information.
                    </p>

                </a>


                <a href="students"
                   class="action">

                    <div class="action-icon">
                        🗑️
                    </div>

                    <h3>Manage Records</h3>

                    <p>
                        Remove outdated student
                        records from the database.
                    </p>

                </a>


            </div>

        </div>


        <!-- SYSTEM INFORMATION -->

        <div class="panel">

            <div class="panel-header">

                <h2>System Information</h2>

            </div>


            <div class="info-row">

                <span class="info-label">
                    Database
                </span>

                <span class="info-value">
                    Oracle
                </span>

            </div>


            <div class="info-row">

                <span class="info-label">
                    Backend
                </span>

                <span class="info-value">
                    Java
                </span>

            </div>


            <div class="info-row">

                <span class="info-label">
                    Web Technology
                </span>

                <span class="info-value">
                    JSP
                </span>

            </div>


            <div class="info-row">

                <span class="info-label">
                    Connectivity
                </span>

                <span class="info-value">
                    JDBC
                </span>

            </div>


            <div class="info-row">

                <span class="info-label">
                    Server
                </span>

                <span class="status">

                    <span class="status-dot"></span>

                    Online

                </span>

            </div>


        </div>


    </div>



    <!-- ==========================================
         STUDENT MANAGEMENT PANEL
         ========================================== -->

    <div class="bottom-panel">

        <div class="bottom-content">

            <div>

                <h2>
                    Student Records Management
                </h2>

                <p>
                    Add, view, update and delete
                    student information from one place.
                </p>

            </div>


            <a href="students"
               class="view-btn">

                Open Student Records →

            </a>

        </div>

    </div>



    <div class="footer">

        College Student Management System
        • Java • JSP • Servlet • JDBC • Oracle

    </div>


</div>


</body>

</html>
```
