-- so far we only learned how to insert rows into one table,
-- now we will learn how to insert rows into MULTIPLE tables

-- parent and child relatiosnhip between data ! 

-- usage:
-- parent-child relationship between two tables
-- e.g. each order from the order table can have multiple order_items from the order_items table
-- thus inserting hierarchical rows will be how to insert an order and all its items ( into order-items ) 
USE sql_store;
INSERT INTO orders (customer_id, order_date, status) 
VALUES (1, '2019-01-02', 1);
-- after this query we need to get the newly generated order_id, to then add stuff to the order_items table ! 
-- in sql many functions— code that can be reused 
INSERT INTO order_items 
VALUES (LAST_INSERT_ID(),1,1,2.95),
	   (LAST_INSERT_ID(),2,1,3.95);
