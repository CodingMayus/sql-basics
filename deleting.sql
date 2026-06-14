USE sql_invoicing;
-- DELETE statements have two parts.
-- 1.  DELETE FROM [table_name]
-- 2. WHERE clause

 DELETE FROM invoices 
 WHERE client_id=(SELECT client_id FROM clients
WHERE name = "Myworks");
-- needs where clause to pinpoint exact record/entry/row, no WHERE clause will delete the entire table lolll

