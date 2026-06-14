-- Select invoices larger than all invoices of client 3
USE sql_invoicing;

-- Typical way:
SELECT * FROM invoices 
WHERE  invoice_total > 
(SELECT MAX(invoice_total) FROM 
invoices
WHERE client_id = 3);
-- Using the ALL keyword:
-- we prefix the list with the keyword "ALL", to specify, that we want all the invoices whose invoice_total is greater than all the values in the list ! 
-- or more generally, 
-- satisifies the predicate for ALL items in the list 
SELECT * FROM invoices WHERE
invoice_total > ALL (
SELECT invoice_total
FROM invoices
WHERE client_id = 3 
)
-- SELECT * 
-- FROM invoices
-- WHERE invoice_total > ALL (150,130,167,...)

-- In essence, a subquery can return:
-- 1. A Value 
-- 2. A List ( multiple rows )
-- 3. A Table  ( multiple columns )
-- Each approach requires different approaches 
