-- basic INNER JOIN
USE sql_store;
SELECT * from orders o INNER JOIN customers c ON o.customer_id = c.customer_id;
-- theres another way to write this with IMPLICT JOIN syntax ! 

SELECT *
FROM orders o,customers c
WHERE o.customer_id = c.customer_id;
-- this is good, we have 10 orders.

SELECT * FROM orders o, customers c
-- this results in 100 rows, since every orders row is going to joinned with every customer ! 

-- it is not recommanded to prevent blackbox coding, AND if you ignore the WHERE clause it becomes a CROSS JOIN,
-- explicitly writing a join statement forces you to write the join statmeent 