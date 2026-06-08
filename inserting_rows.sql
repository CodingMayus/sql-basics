-- how to insert a row into a table;
USE sql_store;
INSERT INTO customers
VALUES (DEFAULT,'John', 'Smith','2007-09-28', NULL, '67 Ohio Drive','Aurora', 'CA',3000);
-- in the values parentehesis, include all the values in the column
-- 1. customer_id -> clicking the wetch u can see auto-incremental is enabled ( AI ), thus if this value is not provided ( DEFAULT ) , it will increase by 1 from the last row.
 -- ( IF EXPLICITLY providing a number, it will error if someone has the same primary key(s)  as u )
 
 
 -- another way to write this statement;
 INSERT INTO customers ( first_name,last_name,birth_date,address,city,state)
 VALUES ("Bob", "Joe", "1900-01-01", "32 Sigma Avenue", "Markham", "ON");
