# College Student Management System

A Java-based web application developed to manage college student records efficiently. The project uses JSP, Servlets, JDBC, and Oracle Database to perform CRUD (Create, Read, Update, Delete) operations through a web interface.

## 📌 Project Overview

The College Student Management System helps manage student information in a centralized database. Users can add new students, view student records, update existing information, and delete records when required.

## ✨ Features

- **Dashboard:** Main interface for accessing student management functions.
- **Add Student:** Register new student details.
- **View Students:** Display student records in a table.
- **Edit Student:** Update existing student information.
- **Delete Student:** Remove student records.
- **Database Connectivity:** Connect the Java web application to Oracle Database using JDBC.
- **CRUD Operations:** Perform all basic database operations.

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Java | Application logic |
| JSP | Dynamic web pages |
| Servlets | Handle HTTP requests |
| JDBC | Database connectivity |
| Oracle Database 11g XE | Store student records |
| HTML | Web page structure |
| CSS | Web page styling |
| NetBeans IDE 8.2 | Development environment |
| GlassFish Server 4.1.1 | Deploy and run the web application |

## 🗂️ Project Structure

```text
CollegeStudentManagement/
├── Web Pages/
│   ├── dashboard.jsp
│   ├── addstudent.jsp
│   ├── editstudent.jsp
│   └── students.jsp
│
├── Source Packages/
│   └── com.college/
│       ├── DBConnection.java
│       ├── TestConnection.java
│       ├── Student.java
│       ├── StudentDAO.java
│       └── StudentServlet.java
│
├── Libraries/
├── nbproject/
├── build.xml
└── README.md
```

*Note: The structure above is illustrative. Your actual filenames and folders may differ.*

## 🗄️ Database Setup

Create the student table in Oracle Database:

```sql
CREATE TABLE COLLEGE_STUDENT (
    ENROLLMENT_NO NUMBER(10) PRIMARY KEY,
    STUDENT_NAME VARCHAR2(100) NOT NULL,
    EMAIL VARCHAR2(100),
    PHONE VARCHAR2(15),
    BRANCH VARCHAR2(50),
    SEMESTER NUMBER(2),
    SECTION VARCHAR2(5),
    CGPA NUMBER(4,2)
);
```

### Sample Data

```sql
INSERT INTO COLLEGE_STUDENT
VALUES (231, 'Samual james', 'sam@gmail.com',
        '9876543210', 'CSE', 5, 'A', 8.90);

INSERT INTO COLLEGE_STUDENT
VALUES (233, 'jake bawar', 'jb@gmail.com',
        '9876543211', 'BIO-TECH', 5, 'A', 8.75);

COMMIT;
```

Verify the records:

```sql
SELECT * FROM COLLEGE_STUDENT;
```

## ⚙️ Installation and Setup

### 1. Prerequisites

Install or configure:

- JDK 8
- NetBeans IDE 8.2
- GlassFish Server 4.1.1
- Oracle Database 11g XE
- Oracle JDBC driver (`ojdbc6.jar` or a compatible driver)

### 2. Clone the Repository

```bash
git clone https://github.com/YOUR-USERNAME/CollegeStudentManagement.git
```

Replace `YOUR-USERNAME` with your GitHub username.

### 3. Open the Project

1. Open NetBeans IDE.
2. Select **File → Open Project**.
3. Choose the downloaded project folder.
4. Resolve any missing libraries or server configuration issues.

### 4. Configure the Database

Update the database connection settings in `DBConnection.java`:

```java
DriverManager.getConnection(
    "jdbc:oracle:thin:@localhost:1521:xe",
    "YOUR_USERNAME",
    "YOUR_PASSWORD"
);
```

Replace the placeholders with your Oracle credentials. Do not upload real database passwords to GitHub.

### 5. Create the Database Table

Run the SQL table creation query provided above in your Oracle database.

### 6. Run the Application

1. Start Oracle Database and ensure the listener is running.
2. Configure GlassFish in NetBeans.
3. Right-click the project.
4. Select **Run**.
5. Open the application URL displayed by NetBeans.

## 🔄 CRUD Operations

| Operation | Description |
|---|---|
| Create | Add a new student record |
| Read | Display stored student records |
| Update | Edit student details |
| Delete | Remove a student record |

## 🎯 Learning Objectives

- Understand Java web application development.
- Learn JSP and Servlet integration.
- Implement JDBC connectivity with Oracle.
- Perform CRUD operations using SQL.
- Understand the MVC-style separation of presentation, request handling, and database access.
- Deploy a web application using GlassFish Server.

## 🚀 Future Enhancements

- Student login and administrator authentication.
- Search and filter student records.
- Input validation and improved error handling.
- Pagination for large student lists.
- Responsive user interface.
- Role-based access control.

## 👨‍💻 Author

**Your Name**

GitHub: [Your GitHub Profile](https://github.com/YOUR-USERNAME)

## 📄 License

This project is intended for educational and academic purposes. Add an open-source license if you want others to reuse or distribute it under defined terms.
