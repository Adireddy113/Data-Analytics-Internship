CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;

DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);
INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1028, '2023-01-01', 218.54, 123),
(1077, '2023-01-02', 477.82, 174),
(1091, '2023-01-04', 379.40, 171),
(1068, '2023-01-06', 319.40, 135),
(1046, '2023-01-08', 120.21, 137),
(1093, '2023-01-10', 120.20, 183),
(1061, '2023-01-11', 76.14, 198),
(1101, '2023-02-03', 222.00, 120),
(1102, '2023-02-08', 178.00, 121),
(1103, '2023-02-18', 290.00, 122),
(1104, '2023-03-05', 310.50, 124),
(1105, '2023-03-15', 425.75, 125);
SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    orders
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    order_year, order_month;








