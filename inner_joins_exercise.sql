USE sql_store;

SELECT order_id, oi.product_id, quantity, oi.unit_price from order_items oi  inner join
products p on oi.product_id = p.product_id 