-- WHERE as the ALL keyword requires the condition to be met by ALL items in a list.
--          the ANY keyword requires the condition to be met by AT LEAST ONE item in the list.

-- OK, we use the ANY and ALL keyword when we WANT TO treat lists like we TREAT SINGLE values !!! 
USE sql_invoicing;
SELECT * FROM invoices
where invoice_total > ALL (SELECT invoice_total FROM invoices WHERE client_id = 3);
SELECT * FROM invoices
where invoice_total > ANY (SELECT invoice_total FROM invoices WHERE client_id = 3);

-- SELECT clients with at least two invoices.

-- NORMAL
SELECT * FROM clients 
WHERE client_id IN (
SELECT client_id FROM invoices
GROUP BY client_id HAVING COUNT(*) >=2);

-- USING ANY KEYWORD 

SELECT * FROM clients 
WHERE client_id = ANY(
SELECT client_id FROM invoices
GROUP BY client_id HAVING COUNT(*) >=2);
