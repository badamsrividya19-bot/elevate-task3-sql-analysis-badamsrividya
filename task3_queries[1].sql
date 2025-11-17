
-- Task 3: SQL for Data Analysis
-- Author: Badam Sri Vidya
-- SQLite database: ecommerce.db

-- 1) SELECT with WHERE and ORDER BY
SELECT customer_id, first_name, last_name, country FROM customers
WHERE country = 'India'
ORDER BY join_date DESC
LIMIT 10;

-- 2) Aggregation: total sales per customer
SELECT o.customer_id, c.first_name || ' ' || c.last_name AS customer_name,
       SUM(o.total_amount) AS total_spent, COUNT(o.order_id) AS orders_count
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY o.customer_id
ORDER BY total_spent DESC
LIMIT 10;

-- 3) LEFT JOIN to include products with zero sales
SELECT p.product_id, p.product_name, COALESCE(SUM(oi.quantity),0) AS total_qty_sold
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id
ORDER BY total_qty_sold DESC;

-- 4) Subquery: customers who spent more than average
SELECT customer_id, customer_name, total_spent FROM (
    SELECT o.customer_id, c.first_name || ' ' || c.last_name AS customer_name,
           SUM(o.total_amount) AS total_spent
    FROM orders o JOIN customers c ON o.customer_id = c.customer_id
    GROUP BY o.customer_id
) WHERE total_spent > (SELECT AVG(total_spent) FROM (
    SELECT SUM(total_amount) AS total_spent FROM orders GROUP BY customer_id
));

-- 5) HAVING example: categories with avg price > 200
SELECT cat.category_name, AVG(p.price) AS avg_price
FROM products p JOIN categories cat ON p.category_id = cat.category_id
GROUP BY cat.category_id
HAVING AVG(p.price) > 200;

-- 6) Window function: running total per customer
SELECT customer_id, order_id, order_date, total_amount,
       SUM(total_amount) OVER (PARTITION BY customer_id ORDER BY order_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total
FROM orders
ORDER BY customer_id, order_date
LIMIT 20;

-- 7) Create view
CREATE VIEW IF NOT EXISTS customer_spend_view AS
SELECT o.customer_id, c.first_name || ' ' || c.last_name AS customer_name,
       SUM(o.total_amount) AS total_spent, COUNT(o.order_id) AS orders_count
FROM orders o JOIN customers c ON o.customer_id = c.customer_id
GROUP BY o.customer_id;

-- 8) Query view
SELECT * FROM customer_spend_view ORDER BY total_spent DESC LIMIT 10;

-- 9) ARPU calculation
SELECT ROUND( (SUM(total_amount) * 1.0) / COUNT(DISTINCT customer_id), 2) AS ARPU FROM orders;

-- 10) Example EXISTS subquery: customers who bought 'Laptop'
SELECT DISTINCT c.customer_id, c.first_name || ' ' || c.last_name AS customer_name
FROM customers c
WHERE EXISTS (
    SELECT 1 FROM orders o JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
    WHERE o.customer_id = c.customer_id AND p.product_name = 'Laptop'
);
