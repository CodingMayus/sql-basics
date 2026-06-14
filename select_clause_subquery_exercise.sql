USE sql_invoicing;
SELECT c.client_id, c.name, SUM(invoice_total) AS total_sales, (SELECT AVG(invoice_total) FROM invoices) as average, SUM(invoice_total)-(SELECT average) as difference FROM clients c
LEFT OUTER JOIN  invoices i USING (client_id)
GROUP BY client_id;
-- could use joins here, 
-- or use subqueries, in which case, we used the correlated subqueries to help us out!
SELECT client_id,
name,
(SELECT SUM(invoice_total) FROM invoices
WHERE c.client_id = invoices.client_id ) as total_sales,
(SELECT AVG(invoice_total) FROM invoices) as average, (SELECT total_sales - invoices )as difference FROM clients c;