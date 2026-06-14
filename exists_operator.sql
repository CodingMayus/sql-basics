-- SELECT clients that have an invoice
-- recall we can either use IN operator or JOIN or EXISTS operator
USE sql_invoicing;
SELECT * FROM clients c 
LEFT OUTER JOIN invoices USING (client_id)
WHERE invoice_id IS NULL;


SELECT * FROM clients c 
WHERE client_id NOT IN (SELECT DISTINCT client_id FROM invoices);


-- another correlated subquery
-- for each client, it will run the correlated subquery, and see if the client_id exists in the invoices table
-- We use the EXISTS operator, to see if there is a ROW in the table THAT MATCHES the FILTER (WHERE ) CONDITION YOU'VE SET
SELECT * FROM clients c 
WHERE EXISTS (
	SELECT client_id 
    FROM invoices 
    WHERE client_id = c.client_id
)
-- IN THE IN OPERATOR, we basically have, after evaluating the subquery:
-- SELECT * FROM clients
-- WHERE client_id IN (1,2,3,5,....) 
-- If there's millions of clients, this is UNOPTIMAL, when checking if the client_id is in the list or NOT.
-- In these cases, we use the EXISTS operator,
-- When we use an EXISTS operator, the subquery DOES NOT return any result to the outer query, and instead just an indication if a value exists in the specified select query or not.
-- This is a more direct and efficient way of doing this.