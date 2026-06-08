
USE sql_invoicing;

UPDATE invoices
SET number="poop"
WHERE 	client_id = 3;
-- heres a scenerio:
-- We don't have the client_id directly, so we cannot simply write the above update-statement
-- instead the client inputs their name,
-- we then retrieve the client_id from that name,
-- then use the client_id to update the invoices !

SELECT client_id from clients
WHERE name = "Myworks";
-- thus we have ( note the parenthesis to alter the order sql runs the code ! ) 
UPDATE invoices 
SET payment_total=invoice_total*0.5,payment_date = due_date
WHERE client_id = (SELECT client_id from clients
Where name = "Myworks");

-- we can update multiple records/entries/rows with the subqueries as well ! 
-- BUT IN THIS CASE, WE HAVE TO REMEMBER that we CANNOT use an EQUALITY (=) anymore, WE HAVE TO USE the IN keyword ( THINK ARRAYS since WE GET BACK MULTIPLE RESULTZ ) 
-- e.g. updating entries/records/rows from specific states
UPDATE invoices
SET payment_total=invoice_total*0.5, payment_date=due_date
WHERE client_id IN 
	(SELECT client_id from clients 
    WHERE state IN ('CA','NY'));