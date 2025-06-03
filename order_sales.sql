-- Create database

CREATE DATABASE IF NOT EXISTS online_order_sales;
USE online_order_sales;

-- Create orders table

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

select * from orders;

-- Insert sample data

INSERT INTO orders 
(order_id, order_date, amount, product_id) VALUES
(1, '2024-01-10', 150.00, 101),
(2, '2024-01-15', 200.00, 102),
(3, '2024-02-03', 350.00, 103),
(4, '2024-02-20', 400.00, 104),
(5, '2024-03-12', 250.00, 105),
(6, '2024-03-25', 500.00, 106),
(7, '2024-04-05', 300.00, 107),
(8, '2024-04-22', 450.00, 108),
(9, '2024-05-14', 600.00, 109),
(10, '2024-05-30', 750.00, 110),
-- Add more rows to simulate realistic data
(11, '2024-06-02', 200.00, 101),
(12, '2024-06-08', 120.00, 102),
(13, '2024-07-11', 310.00, 103),
(14, '2024-07-20', 410.00, 104),
(15, '2024-08-01', 510.00, 105);

-- Monthly Revenue & Order Volume

SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue
FROM orders
GROUP BY order_year, order_month
ORDER BY total_revenue DESC
LIMIT 3;

SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(amount) AS total_revenue
FROM orders;


