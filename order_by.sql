USE sql_store;
SELECT * FROM customers
ORDER BY first_name DESC;	
-- DESCENDING ORDER

SELECT * FROM customers
ORDER BY state, first_name DESC;
-- ADDING MULTIPLE METRICS 

SELECT first_name, last_name
FROM customers
ORDER BY state DESC, first_name DESC;
-- ORDERING METRIC DOES NOT HAVE TO BE PART OF THE SHOWN COLUMNS

SELECT first_name, last_name, 10 AS points
FROM customers
ORDER BY birth_date;

SELECT state, 20 AS points 
FROM customers
ORDER BY points, first_name;

SELECT * FROM customers
ORDER BY 3;
-- order by the THIRD column
SELECT * FROM customers
ORDER BY  9;
-- order by the NINETH column ( the amount of points )

SELECT points, city FROM sql_store.customers
ORDER BY 2;
-- HERE the order is sorted based on the city metrics
-- NOT recommanded