-- joins are basically ways to combine multiple columns from multiple tables
-- unions are basically ways to combine multiple roiws from multiple tables
-- sample usage:
-- CREATING a report where if the order date is in the current year, we have a new column called label, which determines if this order is "ARCHIEVED" or "ACTIVE"
-- in essence, combining data from MULTIPLE queries ( that could differ in conditions !  ) 
USE sql_store;
SELECT order_id,
		order_date, 
        'ACTIVE' as status FROM orders 
WHERE order_date  >= '2019-01-01';

SELECT order_id,
order_date,
'ARCHIEVED' as status FROM orders WHERE order_date < '2019-01-01';

-- from these two queries, we get a lot of rows, we can then combine these queries WITH UNION ! 

SELECT order_id, order_date, 'ACTIVE'
FROM orders WHERE order_date >= '2019-01-01'
UNION
SELECT order_id, order_date, 'ARCHIEVED' 
FROM orders WHERE order_date < '2019-01-01';

-- LETS try queries from DIFFERENT tables this time ! 
-- REMEMBER, this query ONLY works if the number of columns in the first table is equal to the number of columsn in the second
-- the column-name is dependent on the FIRST table
SELECT first_name as poop
FROM customers
UNION
SELECT name
FROM shippers;