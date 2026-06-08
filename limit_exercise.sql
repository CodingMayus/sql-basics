-- get top three loyal customers ( most points ) 


USE sql_store;

SELECT * from customers
ORDER BY points DESC LIMIT 3;
USE sql_store;

SELECT * from customers
ORDER BY points DESC LIMIT 3,3;