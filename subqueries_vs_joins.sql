-- Quite often we can REWRITE a SUBQUERY, using a JOIN
-- Factors to consider:
-- Readability
-- Performance
-- Problem: Return all clients that do not have an invoice.


SELECT * 
FROM clients
WHERE client_id NOT IN (SELECT distinct client_id FROM invoices ) ;
-- This one more aligns with the problem we tryna to solve;
-- Issue with this is that subqueries can quickly become complex
-- <===>
SELECT * FROM clients
LEFT OUTER JOIN invoices USING (client_id)
WHERE invoice_id IS NULL
-- the LEFT OUTER JOIN, can distract from main purpose