-- Date functions
-- Date functions help us extract information from dates, calculate date differences, and format dates for reports.
-- Use a second table for these examples.
-- Sample table: orders
-- order_id	customer_name	order_date
-- 101	Asha	2026-01-15
-- 102	Rahul	2026-02-20
-- 103	Sara	2026-02-25
-- 104	John	2026-03-05

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    order_date DATE
);

INSERT INTO orders
    (order_id, customer_name, order_date)
VALUES
    (101, 'Asha', '2026-01-15'),
    (102, 'Rahul', '2026-02-20'),
    (103, 'Sara', '2026-02-25'),
    (104, 'John', '2026-03-05');


-- YEAR() — Extract the year
-- YEAR() returns the year component of a date.

SELECT
    order_id,
    order_date,
    YEAR(order_date) AS order_year
FROM orders;

-- If the question is “How many orders were placed in 2026?”, you can filter by year:

SELECT *
FROM orders
WHERE YEAR(order_date) = 2026;


-- This returns all four orders.

-- For large datasets, a date range can often be more efficient than applying YEAR() to the column:

SELECT *
FROM orders
WHERE order_date >= '2026-01-01'
  AND order_date < '2027-01-01';


-- This form can make better use of an index on order_date.
-- MONTH() — Extract the month
-- MONTH() returns the month number from 1 to 12.
SELECT
    customer_name,
    order_date,
    MONTH(order_date) AS order_month
FROM orders;

-- Practical question: How many orders were placed in February?

SELECT COUNT(*) AS total_orders
FROM orders
WHERE MONTH(order_date) = 2;

-- DAY() — Extract the day of the month
-- DAY() returns the day number of a date, from 1 to 31.
SELECT
    order_date,
    DAY(order_date) AS day_number
FROM orders;

-- DATE_FORMAT() — Display a date in a chosen format
-- A database might store a date as 2026-02-20, but a report may need to display it as 20 February 2026.

-- Use DATE_FORMAT():

SELECT
    order_date,
    DATE_FORMAT(order_date, '%d %M %Y') AS formatted_date
FROM orders;