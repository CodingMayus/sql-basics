-- FIND the products that have never been ordered.
-- just think about it,
-- if you were AMAZON, using the IN operators, will result in resultant subqueries containing billions of items.
-- this is not good for ONE query
USE sql_store;

SELECT * FROM products p
WHERE NOT EXISTS (SELECT product_id
FROM order_items
WHERE p.product_id = order_items.product_id
)