-- UPDATE A TABLE ( UPDATE CLAUSE ) 	
-- USAGE:
   -- CHANGING user-settings
   -- MISTAKE in system 
   -- In essence, when we use the "UPDATE" statement when we need to update ONE or MORE records.
USE sql_invoicing;

UPDATE invoices
-- we use the UPDATE clause to denote the TABLE we are updating
SET payment_total = 10, payment_date ='2019-03-01'
-- we use the SET clause to denote the one or more columns we are UPDATING 
WHERE invoice_id = 1;
-- THEN, we use the WHERE statement to pinpoint the EXACT entry/row that needs to be updated 

UPDATE invoices
SET payment_total=DEFAULT,payment_date=NULL
WHERE invoice_id = 1;
-- DEFAULT keyword is just the DEFAULT value set for that column !! Which is, $0.00 ! 
UPDATE invoices
SET payment_total=10.00, payment_date='2019-03-01'
WHERE invoice_id = 3;

UPDATE invoices
SET payment_total=invoice_total * 0.5, payment_date=due_date
WHERE invoice_id = 3;