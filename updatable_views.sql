-- We can use VIEWS as virtual tables in SELECT statements, but what about INSERT and DELETE statements?
-- YES, but only under certain conditions:
-- If the view does not have:
--    DISTINCT
--    AGGREGATE FUNCTIONS ( MIN, MAX, SUM, COUNT, AVG )
--    GROUP BY / HAVING
--    UNION 
-- we refer to that view as an UPDATABLE VIEW.
-- And thus, we can update data through this view through insert and delete statements!

USE sql_invoicing;
CREATE OR REPLACE VIEW invoices_with_balance AS 
SELECT invoice_id, number, client_id, invoice_total, payment_total, invoice_total - payment_total AS balance, invoice_date, due_date, payment_date
FROM invoices 
WHERE (invoice_total - payment_total ) > 0 ;
-- ( cannot use alias balance here, table doesnt know it exists yet ).
-- Because it doesn't have any of the listed functions or keywords, this is an updatable view where which we can modify records !
-- e.g.:
DELETE FROM invoices_with_balance
WHERE invoice_id = 1;
-- remember views are just a means to convientally view other tables and does not store separate data, thus the changes done to the view will reflect to the underlying tables
-- that make up the view.

UPDATE invoices_with_balance
SET due_date = DATE_ADD(due_date, INTERVAL 2 DAY)
WHERE invoice_id = 2;

-- Finally we can insert new invoices through this view. 
-- But it must meet some conditions.
-- This operation will only work, if the record has ALL the required columns in the underlying tables ( makes sense ! ), which ig is difficult when a view might be made up of several tables 
-- We insert through a view for security reasons, so individuals can insert through a view instead of directly to the tables  