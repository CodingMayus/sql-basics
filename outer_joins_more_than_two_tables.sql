USE sql_store;
SELECT c.customer_id, c.first_name, s.name AS shipper_name, o.order_id FROM customers c 
LEFT OUTER JOIN orders o ON c.customer_id = o.customer_id 
LEFT OUTER JOIN shippers s ON o.shipper_id = s.shipper_id ;