-- not recommanded, cause can create unexpected behaviours
USE sql_store;
SELECT o.order_id,
c.first_name 
FROM orders o
NATURAL JOIN customers c 
-- we dont have to specify the shared column names, the database engine will naturally find the columns that are equal, good ig for tables that share one column  