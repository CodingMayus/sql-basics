USE sql_store;
SELECT *
FROM
orders
WHERE order_date >= '2019-01-01';
-- getting orders for current year should NOT be hardcoded.

SELECT * 
FROM 
orders
WHERE YEAR(order_date) =SYEAR(NOW());