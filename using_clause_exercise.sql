USE sql_invoicing;
SELECT p.date, c.name as client,p.amount,pm.name FROM payments p INNER JOIN 
clients c ON p.client_id = c.client_id
INNER JOIN payment_methods pm ON p.payment_method = pm.payment_method_id;
-- transforms into
SELECT p.date, c.name as "client", p.amount, pm.name FROM payments p INNER JOIN 
clients c USING (client_id) 
INNER JOIN payment_methods pm ON p.payment_method = pm.payment_method_id;