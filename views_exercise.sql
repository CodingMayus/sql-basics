USE sql_invoicing;
-- For views ofc, start by making sure the query works before adding it to the VIEW.

CREATE VIEW client_balance AS
SELECT c.client_id, c.name, SUM(invoice_total - payment_total ) AS balance FROM clients c LEFT OUTER JOIN invoices i USING (client_id)
GROUP BY c.client_id, c.name; 
-- Another approach to creating queries is, JOINING the table, and adding the aggregate functions before grouping the tables, and necessary columns in the SELECT clause, before grouping
-- the use case for GROUP will be obvious when we see multiple rows/entries/records with the same client_id and name.