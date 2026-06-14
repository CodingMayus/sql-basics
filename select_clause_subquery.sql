-- we cannot have alias in expressions in SELECT clause.
USE sql_invoicing;
SELECT 
	invoice_id,
    invoice_total,
    (SELECT AVG(invoice_total) FROM invoices) as invoice_average,
    invoice_total - (SELECT AVG(invoice_total) FROM invoices)
FROM invoices;
SELECT 
	invoice_id,
    invoice_total,
    (SELECT AVG(invoice_total) FROM invoices) as invoice_average,
    invoice_total - (SELECT invoice_average) as Difference
FROM invoices