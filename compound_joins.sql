-- compound_joins motivation
-- there is no way to uniquely identify rows based on a given column ( like an id )
-- thus we use two columns instead of one for an unique identification ( impossible for two different orders to have the same product_id and order_id ! 
-- JUST use BOOLEAN statements.,
-- usually used when there are TWO primary keys ! 
USE sql_store;
SELECT * FROM  order_items oi 
JOIN order_item_notes oin ON oi.order_id= oin.order_id
                               AND oi.product_id = oin.product_id
                               