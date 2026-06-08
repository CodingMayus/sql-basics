USE sql_store;
SELECT p.product_id, p.name, oi.quantity FROM products p LEFT OUTER JOIN order_items oi ON p.product_id = oi.product_id