-- Some views display tables that filter certain rows/records/entries, but by updating values in columns, some records/entries/rows may not meet the conditions anymore
-- what happens then?
SELECT * FROM invoices_with_balance;
UPDATE invoices_with_balance 
SET payment_total =  invoice_total
WHERE invoice_id = 2;
SELECT * FROM invoices_with_balance;
-- its GONE, intuitively, but what if you DONT want to exclude a row from a view when it no longer meets the conditions ( think of the scenerios );

USE sql_invoicing;
CREATE OR REPLACE VIEW invoices_with_balance AS 
SELECT 
invoice_id,
number,
client_id,
invoice_total,
payment_total,
invoice_total - payment_total AS balance,
invoice_date,
due_date,
payment_date 
FROM invoices
WHERE (invoice_total-payment_total) > 0
WITH CHECK OPTION;
-- WITH CHECK OPTION will prevent update, delete statements from excluding rows from a view.

UPDATE invoices_with_balance 
SET payment_total = invoice_total
WHERE invoice_id = 3;
-- the update stmt failed bc of WITH CHECK OPTION
SELECT * FROM invoices_with_balance;