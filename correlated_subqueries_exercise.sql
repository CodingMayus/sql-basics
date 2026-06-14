-- GET invoices that are larger than the client's average invoice amount

-- For each invoice, get the average invoice amount, and return if it is greater or not.
-- correlated subqueries are VERY related to alias and using different instances of same tables.
USE sql_invoicing;
SELECT * FROM invoices i 
WHERE invoice_total > (SELECT AVG(invoice_total) FROM invoices 
WHERE i.client_id = invoices.client_id);

-- motivation:
-- because we are NOT dealing with a single average across the entire table but MULTIPLE averages that depends on which client an invoice belongs to.
-- two instances of the same table here, that's the confusing part of about correlated subqueries.