USE sql_invoicing;

SELECT p.client_id, c.name, c.phone, p.amount, pm.name AS payment_method FROM payments p INNER JOIN clients c ON p.client_id = c.client_id INNER JOIN payment_methods pm ON pm.payment_method_id = p.payment_method;