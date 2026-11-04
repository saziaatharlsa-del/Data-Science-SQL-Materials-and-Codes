CREATE DATABASE window_demo;
USE window_demo;

CREATE TABLE employee_sales (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    sales INT
);

INSERT INTO employee_sales VALUES
(1, 'Asha', 'Sales', 5000),
(2, 'Rahul', 'Sales', 7000),
(3, 'Sara', 'Sales', 7000),
(4, 'John', 'HR', 4000),
(5, 'Meera', 'HR', 6000),
(6, 'Ali', 'IT', 8000),
(7, 'Priya', 'IT', 6000);

SELECT * FROM employee_sales;

-- Using GROUP BY:
SELECT department, SUM(sales) AS total_sales
FROM employee_sales
GROUP BY department;

-- using window func
SELECT
    employee_name,
    department,
    sales,
    SUM(sales) OVER (
        PARTITION BY department
    ) AS department_total
FROM employee_sales;

-- OVER() tells SQL that a function should operate over a window of rows.
SELECT * FROM employee_sales;

SELECT
    employee_name,
    department,
    sales,
    SUM(sales) OVER () AS total_sales
FROM employee_sales;

-- PARTITION BY divides rows into groups for a window calculation, without removing 
-- individual rows.

SELECT
    employee_name,
    department,
    sales,
    SUM(sales) OVER (
        PARTITION BY department
    ) AS department_total
FROM employee_sales;

-- GROUP BY department combines employees into department-level rows.

-- PARTITION BY department divides the rows into departments for a calculation, 
-- while keeping each employee visible.

-- Row Number ROW_NUMBER() OVER (ORDER BY column_name),

-- lets number employees from lowest sales to highest sales.

SELECT
    employee_name,
    sales,
    ROW_NUMBER() OVER () AS series
FROM employee_sales;
-- ------------------------------------------------
SELECT
    employee_name,
    employee_id,
    sales,
    ROW_NUMBER() OVER() AS seeham
FROM employee_sales
order by sales;

-- RANK()
-- Assigns a rank based on values. 
-- Employees with equal sales receive the same rank, and the next rank is skipped.
-- RANK() OVER (ORDER BY column_name DESC)

SELECT
    employee_name,
    sales,
    RANK() OVER (
        ORDER BY sales DESC
    ) AS sales_rank
FROM employee_sales;

-- DENSE_RANK()
-- Assigns the same rank to tied values but does not skip the next rank.

-- DENSE_RANK() OVER (ORDER BY column_name DESC)

SELECT
    employee_name,
    sales,
    DENSE_RANK() OVER (
        ORDER BY sales DESC
    ) AS dense_rrank
FROM employee_sales;