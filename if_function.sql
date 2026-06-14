-- for cases where we want to show a specific query under certain conditions,
-- or another under different ones
-- REMINDS YOU OF UNION operators, where we combined two queries together that usualy
-- meet different conditions
-- We can do the same with less code with IF function

-- IF(expression,first,second)
-- if expression is true, return first value, else return second value
USE sql_store;
SELECT 
	order_id,
    order_date,
    IF(YEAR(order_date)= '2019', "ACTIVE", "INACTIVE") as category
    FROM orders