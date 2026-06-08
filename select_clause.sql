SELECT 
first_name,
last_name,
points, 
points / 20 * 100 AS "discount factor"
FROM customers;
-- use the AS keyword for alias! 

SELECT state 
FROM customers;
-- some customers may be from the same state, hence we use the DISTINCT keyword.
SELECT DISTINCT state
FROM customers;