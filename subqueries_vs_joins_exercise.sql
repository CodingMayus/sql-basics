USE sql_store;

-- JOINS
-- Here is more readable and meaningful than the subquery
SELECT DISTINCT customer_id, first_name, last_name
FROM customers c INNER JOIN orders o USING (customer_id ) INNER JOIN order_items oi USING (order_id)
where product_id =3;

-- SUBQUERIES

SELECT customer_id, first_name, last_name
FROM customers
WHERE 
customer_id IN 
(SELECT DISTINCT customer_id FROM orders WHERE 
order_id IN (SELECT order_id FROM order_items WHERE product_id = 3)); 
