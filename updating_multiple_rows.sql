-- basically updating a single row, but make the WHERE clause MORE loose ! 

USE sql_invoicing;

UPDATE invoices
SET number="poop"
WHERE 	client_id = 3;
-- By default, having an UPDATE statement that updates multiple rows in MYSQL will by default error, because MYSQL has SAFETY UPDATE MODE ON, allowing an update statement 
-- to alter only one entry
-- this is only the case in the MYSQL workbench !, wont affect you in applications 
-- turn off, through EDIT->PREFERENCES->SQL-EDITOR->SAFE-DELETE/EDIT
-- restart local instance ( reconnect to db )


UPDATE invoices
SET number="poop"
WHERE client_id IN (3,4,5);
-- if no where clause, it will update the entire table loll