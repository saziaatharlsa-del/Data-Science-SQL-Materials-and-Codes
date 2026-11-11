
-- SUBQUERY AND CTE DEMONSTRATION



-- STEP 1: CREATE DATABASE

CREATE DATABASE student_db;
USE student_db;


-- STEP 2: CREATE TABLE

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course VARCHAR(50),
    marks INT
);


-- STEP 3: INSERT SAMPLE DATA

INSERT INTO students VALUES
(1, 'Rahul', 'Data Science', 85),
(2, 'Priya', 'Python', 72),
(3, 'Arjun', 'Data Science', 90),
(4, 'Sneha', 'Python', 65),
(5, 'Kiran', 'Data Science', 55),
(6, 'Ayesha', 'Python', 95),
(7, 'Rohit', 'Data Science', 78),
(8, 'Neha', 'Python', 88),
(9, 'Vikram', 'Data Science', 60),
(10, 'Meera', 'Python', 80);


-- VIEW TABLE

SELECT * FROM students;


-- EXAMPLE 1:
-- Find students who scored above the overall
-- average marks.

SELECT student_name, marks
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
);


-- EXAMPLE 2:
-- Find the student who scored the lowest marks.

SELECT student_name, marks
FROM students
WHERE marks = (
    SELECT MIN(marks)
    FROM students
);


-- EXAMPLE 3:
-- Find students who scored more than Rahul.

SELECT student_name, marks
FROM students
WHERE marks > (
    SELECT marks
    FROM students
    WHERE student_name = 'Rahul'
);


-- EXAMPLE 4:
-- Find students enrolled in courses where
-- at least one student scored above 90.

SELECT student_name, course, marks
FROM students
WHERE course IN (
    SELECT DISTINCT course
    FROM students
    WHERE marks > 90
);


-- EXAMPLE 5:
-- Find students who scored more than the
-- average marks of their respective courses.
-- Correlated Subquery

SELECT student_name, course, marks
FROM students s
WHERE marks > (
    SELECT AVG(marks)
    FROM students
    WHERE course = s.course
);



-- CTE CONCEPT


-- STEP 1: CREATE DATABASE

CREATE DATABASE student_db;
USE student_db;


-- STEP 2: CREATE TABLE

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course VARCHAR(50),
    marks INT
);


-- STEP 3: INSERT DATA

INSERT INTO students VALUES
(1, 'Rahul', 'Data Science', 85),
(2, 'Priya', 'Python', 72),
(3, 'Arjun', 'Data Science', 90),
(4, 'Sneha', 'Python', 65),
(5, 'Kiran', 'Data Science', 55),
(6, 'Ayesha', 'Python', 95),
(7, 'Rohit', 'Data Science', 78),
(8, 'Neha', 'Python', 88),
(9, 'Vikram', 'Data Science', 60),
(10, 'Meera', 'Python', 80);


-- VIEW TABLE

SELECT * FROM students;


-- ==========================================
-- CTE EXAMPLE 1
-- Display all students using a CTE.
-- ==========================================

WITH student_data AS (
    SELECT * FROM students
)
SELECT * FROM student_data;


-- ==========================================
-- CTE EXAMPLE 2
-- Find students who scored above 75.
-- ==========================================

WITH student_data AS (
    SELECT * FROM students
)
SELECT student_name, marks
FROM student_data
WHERE marks > 75;


-- ==========================================
-- CTE EXAMPLE 3
-- Calculate the average marks.
-- ==========================================

WITH average_marks AS (
    SELECT AVG(marks) AS avg_marks
    FROM students
)
SELECT * FROM average_marks;


-- ==========================================
-- CTE EXAMPLE 4
-- Display students who scored above
-- the overall average marks.
-- ==========================================

WITH average_marks AS (
    SELECT AVG(marks) AS avg_marks
    FROM students
)
SELECT student_name, marks
FROM students
WHERE marks > (SELECT avg_marks FROM average_marks);


-- ==========================================
-- CTE EXAMPLE 5
-- Count the number of students in each course.
-- ==========================================

WITH course_count AS (
    SELECT course, COUNT(*) AS total_students
    FROM students
    GROUP BY course
)
SELECT * FROM course_count;

