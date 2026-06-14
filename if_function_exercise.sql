USE sql_store;

SELECT product_id, name,
(SELECT COUNT(*) FROM order_items WHERE p.product_id=order_items.product_id) AS orders,
IF((SELECT orders)!=1,"Many times", "Once") AS frequency FROM products p;

SELECT product_id, name, 
COUNT(*) AS orders,
IF((COUNT(*)) > 2, "Many times", "Once")
FROM products p
INNER JOIN order_items oi USING (product_id)
GROUP BY product_id, name;