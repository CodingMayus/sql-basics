-- copying a table 
-- usage:
-- creating an archieve with all past orders, as you start the term with anew db

CREATE TABLE orders_archived AS
SELECT * FROM orders;

-- the MAIN issue of copying a table like this:
-- the primary key is not set by DEFAULT
-- as well as other details like auto incremental ( AI  )


-- We can then refer to this "SELECT statement" as a SUBQUERY ( a query in a query ) 
-- We can also use SUBQUERIES IN INSERT STATEMENTS for more complex tasks.
-- e.g. recording a subset of queries from the orders table into this table ! 
INSERT INTO orders_archived
SELECT * FROM orders WHERE order_date <= '2019-01-01';
-- no columns are needed because the column-values are already provided by the select stmt ! 
