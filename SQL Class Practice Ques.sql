
-- =====================================================
-- JOIN PRACTICE
-- Database: company_db
-- =====================================================


-- STEP 1: CREATE DATABASE

CREATE DATABASE company_db;

USE company_db;


-- STEP 2: CREATE DEPARTMENTS TABLE

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);


-- STEP 3: CREATE EMPLOYEES TABLE

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT
);


-- STEP 4: INSERT DATA INTO DEPARTMENTS TABLE

INSERT INTO departments VALUES
(1, 'Data Science', 'Hyderabad'),
(2, 'IT', 'Bangalore'),
(3, 'HR', 'Hyderabad'),
(4, 'Finance', 'Mumbai'),
(5, 'Marketing', 'Chennai'),
(6, 'Cybersecurity', 'Pune'),
(7, 'Sales', 'Delhi');


-- STEP 5: INSERT DATA INTO EMPLOYEES TABLE

INSERT INTO employees VALUES
(101, 'Rahul', 60000, 1),
(102, 'Priya', 55000, 2),
(103, 'Arjun', 45000, 1),
(104, 'Sneha', 40000, 3),
(105, 'Kiran', 50000, 2),
(106, 'Ayesha', 65000, 4),
(107, 'Rohit', 35000, 3),
(108, 'Neha', 48000, 1),
(109, 'Vikram', 70000, 4),
(110, 'Meera', 38000, 5),
(111, 'Zoya', 52000, 2),
(112, 'Aditya', 42000, 5);


-- STEP 6: VIEW THE TABLES

SELECT * FROM departments;

SELECT * FROM employees;


-- =====================================================
-- JOIN PRACTICE QUESTIONS
-- =====================================================


-- QUESTION 1:
-- Display employees working in Hyderabad,
-- along with their department names.

-- Write your query below:


-- QUESTION 2:
-- Display departments that do not have any employees.

-- Write your query below:


-- QUESTION 3:
-- Display employees earning more than 50000
-- along with their department names.

-- Write your query below:


-- QUESTION 4:
-- Display all departments and their employee names,
-- including departments without employees.

-- Write your query below:


-- QUESTION 5:
-- Display employees working in the Finance
-- or IT department.

-- Write your query below:


-- QUESTION 6:
-- Display all employees and their department locations,
-- including employees without a matching department.

-- Write your query below:


-- QUESTION 7:
-- Display the number of employees in each department,
-- including departments with zero employees.

-- Write your query below:


-- QUESTION 8:
-- Display department names and employee names
-- where the employee salary is less than 45000.

-- Write your query below:


-- QUESTION 9:
-- Display all departments outside Hyderabad,
-- including departments without employees.

-- Write your query below:


-- QUESTION 10:
-- Display employee names, department names and locations,
-- sorted by location in descending order.

-- Write your query below:


-- =====================================================
-- END OF JOIN PRACTICE
-- =====================================================




-- =====================================================
-- SUBQUERY PRACTICE
-- Database: company_db
-- Topic: Subqueries
-- =====================================================


-- STEP 1: CREATE DATABASE

CREATE DATABASE IF NOT EXISTS company_db;

USE company_db;


-- STEP 2: CREATE DEPARTMENTS TABLE

CREATE TABLE IF NOT EXISTS departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);


-- STEP 3: CREATE EMPLOYEES TABLE

CREATE TABLE IF NOT EXISTS employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT
);


-- STEP 4: INSERT DEPARTMENT DATA
-- Execute only if the tables are empty.

INSERT IGNORE INTO departments VALUES
(1, 'Data Science', 'Hyderabad'),
(2, 'IT', 'Bangalore'),
(3, 'HR', 'Hyderabad'),
(4, 'Finance', 'Mumbai'),
(5, 'Marketing', 'Chennai'),
(6, 'Cybersecurity', 'Pune'),
(7, 'Sales', 'Delhi');


-- STEP 5: INSERT EMPLOYEE DATA

INSERT IGNORE INTO employees VALUES
(101, 'Rahul', 60000, 1),
(102, 'Priya', 55000, 2),
(103, 'Arjun', 45000, 1),
(104, 'Sneha', 40000, 3),
(105, 'Kiran', 50000, 2),
(106, 'Ayesha', 65000, 4),
(107, 'Rohit', 35000, 3),
(108, 'Neha', 48000, 1),
(109, 'Vikram', 70000, 4),
(110, 'Meera', 38000, 5),
(111, 'Zoya', 52000, 2),
(112, 'Aditya', 42000, 5);


-- STEP 6: VIEW TABLES

SELECT * FROM departments;

SELECT * FROM employees;


-- =====================================================
-- SUBQUERY PRACTICE QUESTIONS
-- =====================================================


-- QUESTION 1:
-- Display employees earning more than the
-- overall average salary.

-- Write your query below:


-- QUESTION 2:
-- Display the highest-paid employee.

-- Write your query below:


-- QUESTION 3:
-- Display employees working in the same department
-- as Rahul.

-- Write your query below:


-- QUESTION 4:
-- Display employees earning less than the highest
-- salary in the IT department.

-- Write your query below:


-- QUESTION 5:
-- Display employees working in departments
-- located in Hyderabad.

-- Write your query below:


-- QUESTION 6:
-- Display the department with the highest
-- number of employees.

-- Write your query below:


-- QUESTION 7:
-- Display employees earning more than Priya.

-- Write your query below:


-- QUESTION 8:
-- Display employees belonging to departments
-- where at least one employee earns more than 60000.

-- Write your query below:


-- QUESTION 9:
-- Display departments that do not have any employees
-- using a subquery.

-- Write your query below:


-- QUESTION 10:
-- Display employees earning more than their
-- respective department's average salary.

-- Write your query below:


-- =====================================================
-- END OF SUBQUERY PRACTICE
-- =====================================================



-- =====================================================
-- CTE PRACTICE
-- Database: company_db
-- Topic: Common Table Expressions (CTE)
-- =====================================================


-- STEP 1: SELECT DATABASE

USE company_db;


-- STEP 2: VIEW EXISTING TABLES

SELECT * FROM departments;

SELECT * FROM employees;


-- =====================================================
-- CTE PRACTICE QUESTIONS
-- =====================================================


-- QUESTION 1:
-- Display employees earning more than the overall
-- average salary using a CTE.

-- Write your query below:


-- QUESTION 2:
-- Display the highest-paid employee using a CTE.

-- Write your query below:


-- QUESTION 3:
-- Calculate the average salary of each department
-- and display departments with an average salary
-- greater than 45000.

-- Write your query below:


-- QUESTION 4:
-- Display departments having more than
-- 2 employees using a CTE.

-- Write your query below:


-- QUESTION 5:
-- Display employees earning more than their respective
-- department's average salary using a CTE.

-- Write your query below:


-- =====================================================
-- END OF CTE PRACTICE
-- =====================================================



-- =====================================================
-- DATE FUNCTIONS PRACTICE
-- Database: company_attendance_db
-- Topic: MySQL Date and Time Functions
-- =====================================================


-- STEP 1: CREATE DATABASE

CREATE DATABASE IF NOT EXISTS company_attendance_db;

USE company_attendance_db;


-- STEP 2: CREATE EMPLOYEE ATTENDANCE TABLE

CREATE TABLE IF NOT EXISTS employee_attendance (
    attendance_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    joining_date DATE,
    attendance_date DATE,
    check_in TIME,
    check_out TIME,
    leave_date DATE
);


-- STEP 3: INSERT SAMPLE DATA

INSERT IGNORE INTO employee_attendance VALUES
(1, 'Rahul', 'IT', '2024-01-15', '2026-11-01', '09:00:00', '18:00:00', NULL),
(2, 'Priya', 'HR', '2023-06-20', '2026-11-02', '09:30:00', '18:30:00', '2026-11-15'),
(3, 'Arjun', 'Finance', '2022-03-10', '2026-11-03', '09:15:00', '17:30:00', NULL),
(4, 'Sneha', 'IT', '2025-02-05', '2026-11-04', '10:00:00', '19:00:00', '2026-12-10'),
(5, 'Kiran', 'Marketing', '2021-08-12', '2026-11-05', '08:45:00', '17:45:00', NULL),
(6, 'Ayesha', 'HR', '2024-11-25', '2026-11-06', '09:00:00', '18:00:00', '2026-11-20'),
(7, 'Rohit', 'Finance', '2023-04-18', '2026-11-07', '09:45:00', '18:15:00', NULL),
(8, 'Neha', 'IT', '2020-12-01', '2026-11-08', '08:30:00', '17:30:00', NULL),
(9, 'Vikram', 'Marketing', '2022-07-22', '2026-11-09', '09:00:00', '18:30:00', '2026-12-05'),
(10, 'Meera', 'HR', '2025-05-14', '2026-11-10', '10:15:00', '19:00:00', NULL),
(11, 'Zoya', 'Finance', '2021-09-30', '2026-11-11', '09:00:00', '17:00:00', '2026-11-25'),
(12, 'Aditya', 'IT', '2024-02-29', '2026-11-12', '09:30:00', '18:30:00', NULL),
(13, 'Farhan', 'Marketing', '2023-12-15', '2026-11-13', '08:45:00', '17:15:00', NULL),
(14, 'Sana', 'HR', '2022-10-08', '2026-11-14', '09:15:00', '18:15:00', '2026-12-01'),
(15, 'Imran', 'Finance', '2025-01-02', '2026-11-15', '09:00:00', '18:00:00', NULL);


-- STEP 4: VIEW THE TABLE

SELECT * FROM employee_attendance;


-- =====================================================
-- DATE FUNCTIONS PRACTICE QUESTIONS
-- =====================================================


-- QUESTION 1: YEAR()
-- Display employees who joined in the year 2024.

-- Write your query below:


-- QUESTION 2: MONTH()
-- Display employees who joined in January.

-- Write your query below:


-- QUESTION 3: MONTHNAME()
-- Display employee names along with their
-- joining month names.

-- Write your query below:


-- QUESTION 4: DAYNAME()
-- Display employee names along with the weekday
-- name of their attendance date.

-- Write your query below:


-- QUESTION 5: DATEDIFF()
-- Calculate the number of days each employee
-- has been working since their joining date.

-- Write your query below:


-- QUESTION 6: TIMESTAMPDIFF()
-- Calculate the completed years of service
-- for each employee.

-- Write your query below:


-- QUESTION 7: DATE_ADD()
-- Display the date that is 7 days after
-- each employee's scheduled leave date.
-- Ignore employees whose leave date is NULL.

-- Write your query below:


-- QUESTION 8: DATE_FORMAT()
-- Display joining dates in DD-MM-YYYY format.

-- Write your query below:


-- QUESTION 9: LAST_DAY()
-- Display the last day of the month in which
-- each employee joined.

-- Write your query below:


-- QUESTION 10: CURDATE()
-- Display employee names, the current date,
-- joining dates and the number of days
-- since they joined.

-- Write your query below:


-- =====================================================
-- END OF DATE FUNCTIONS PRACTICE
-- =====================================================
