CREATE DATABASE SUBPRACTICE;

USE SUBPRACTICE;

CREATE TABLE employee_sales (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    sales INT
);
INSERT INTO employee_sales VALUES (1, 'Asha', 'Sales', 5000), (2, 'Rahul', 'Sales', 7000), (3, 'Sara', 'Sales', 7000),
(4, 'John', 'HR', 4000), (5, 'Meera', 'HR', 6000), (6, 'Ali', 'IT', 8000), (7, 'Priya', 'IT', 6000);
SELECT * FROM employee_sales;


SELECT MAX(sales)
FROM employee_sales;

-- 1: Display employees whose sales are greater than the average sales of all employees.


SELECT *
FROM employee_sales
WHERE sales > (
    SELECT AVG(sales)
    FROM employee_sales
);

-- 2: Display the employee or employees who have the highest sales.
SELECT *
FROM employee_sales
WHERE sales = (
    SELECT MAX(sales)
    FROM employee_sales
);

-- 3: Display employees whose sales are below the overall average.
SELECT *
FROM employee_sales
WHERE sales < (
    SELECT AVG(sales)
    FROM employee_sales
);

-- 4: Display employees whose sales are greater than Asha's sales.
SELECT *
FROM employee_sales
WHERE sales > (
    SELECT sales
    FROM employee_sales
    WHERE employee_name = 'Asha'
);

-- 5: Display the employee or employees who have the lowest sales.
SELECT *
FROM employee_sales
WHERE sales = (
    SELECT MIN(sales)
    FROM employee_sales
);

