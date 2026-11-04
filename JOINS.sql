CREATE DATABASE joinpractice1;
USE joinpractice1;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Asha', 10),
(2, 'Rahul', 20),
(3, 'Sara', 10),
(4, 'John', 30),
(5, 'Meera', NULL);

INSERT INTO departments VALUES
(10, 'Sales'),
(20, 'HR'),
(30, 'IT'),
(40, 'Marketing');

SELECT * FROM employees;
SELECT * FROM departments;

-- Example 1: Display employee names and their department names

SELECT
    employees.employee_name,
    departments.department_name
FROM employees
INNER JOIN departments
    ON employees.department_id = departments.department_id;

-- Example 2: Display employees who belong to Sales
SELECT
    employees.employee_name,
    departments.department_name
FROM employees
INNER JOIN departments
    ON employees.department_id = departments.department_id
WHERE departments.department_name = 'Sales';

-- Example 3: Display employee names with their department IDs and names
SELECT
    employees.employee_name,
    employees.department_id,
    departments.department_name
FROM employees
INNER JOIN departments
    ON employees.department_id = departments.department_id;
    
    
-- Example 1: Display all employees and their department names
SELECT
    employees.employee_name,
    departments.department_name
FROM employees
LEFT JOIN departments
    ON employees.department_id = departments.department_id;
    
-- Example 2: Display all employees, including those without a department
SELECT
    employees.employee_name,
    employees.department_id,
    departments.department_name
FROM employees
LEFT JOIN departments
    ON employees.department_id = departments.department_id;
    
    
-- Example 3: Find employees who do not have a matching department
-- This is a very important practical use of LEFT JOIN.
SELECT
    employees.employee_name,
    employees.department_id
FROM employees
LEFT JOIN departments
    ON employees.department_id = departments.department_id
WHERE departments.department_id IS NULL;

-- Example 1: Display all departments and their employees
SELECT
    employees.employee_name,
    departments.department_name
FROM employees
RIGHT JOIN departments
    ON employees.department_id = departments.department_id;
    
-- Example 2: Display all departments with their IDs and employee names
SELECT
    employees.employee_name,
    departments.department_id,
    departments.department_name
FROM employees
RIGHT JOIN departments
    ON employees.department_id = departments.department_id;
    
    
-- Example 3: Find departments that have no employees
SELECT
    departments.department_id,
    departments.department_name
FROM employees
RIGHT JOIN departments
    ON employees.department_id = departments.department_id
WHERE employees.employee_id IS NULL;

-- Example 1: Display all employees and all departments
SELECT
    employees.employee_name,
    departments.department_name
FROM employees
LEFT JOIN departments
    ON employees.department_id = departments.department_id

UNION ALL

SELECT
    employees.employee_name,
    departments.department_name
FROM employees
RIGHT JOIN departments
    ON employees.department_id = departments.department_id
WHERE employees.employee_id IS NULL;

-- Example 2: Display only the unmatched records from either table
SELECT
    employees.employee_name,
    departments.department_name
FROM employees
LEFT JOIN departments
    ON employees.department_id = departments.department_id
WHERE departments.department_id IS NULL

UNION ALL

SELECT
    employees.employee_name,
    departments.department_name
FROM employees
RIGHT JOIN departments
    ON employees.department_id = departments.department_id
WHERE employees.employee_id IS NULL;