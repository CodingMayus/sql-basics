-- we just use USING to simplify code, its basically an alias for pieces of CODE instead simply a column
-- this is good for joinning tables with the same column_name	
USE sql_store;
 SELECT 	
   o.order_id, 
   c.first_name,
   sh.name AS shipper,
   os.name
   FROM orders o
   JOIN customers c
 --  ON o.customer_id = c.customer_id;
	USING (customer_id)
   LEFT OUTER JOIN shippers sh USING (shipper_id)
   LEFT JOIN order_statuses os ON os.order_status_id = o.status;
   
-- thus joins are basically a way for one to join tables with more information to the FIRST table ( the one we did FROM for ) 


-- LETS try composite keyed tables

SELECT * FROM order_items oi
LEFT OUTER JOIN order_item_notes oin
ON oi.order_id = oin.order_id AND oi.product_id = oin.product_id;
-- lets transform using the USING clause
SELECT * FROM order_items oi
LEFT OUTER JOIN order_items_notes oin
USING (order_id),(product_id);
-- 
SELECT * FROM order_items oi
LEFT OUTER JOIN order_items_notes oin
USING (order_id,product_id);