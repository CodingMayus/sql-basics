-- Writing subqueries using the IN operator 
-- USED for subqueries that might return MULTIPLE ROWS, but ONE column ( A LIST ) 
-- USED for when we want to find something that DOES NOT meet a given condition ( by finding the things that meet the condition ) 
-- Consider the scenerio:
  -- We want to find all the products that have never been ordered 
  -- to do this we first find all the products that have been ordered, which is easier ig, to find all the products that have yet to be ordered
USE sql_store;

SELECT * FROM products 
WHERE 
product_id NOT IN (SELECT DISTINCT product_id
FROM order_items);
-- Result from the subquery is a list/set/group that we can use.

-- Note the difference from previous subqueries, THIS subquery is RETURNING MULTIPLE VALUES (multiple rows, we will see how multiple columns work later )THIS TIME ! 
