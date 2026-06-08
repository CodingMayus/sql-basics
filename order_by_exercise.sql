USE SQL_store;
SELECT order_id, product_id, quantity, unit_price, quantity * unit_price AS total_price FROM order_items
WHERE order_id =2
ORDER BY total_price DESC