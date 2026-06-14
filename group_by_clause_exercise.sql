USE sql_invoicing;
SELECT 
p.date,
pm.name AS payment_method,
SUM(p.amount) AS total_payments
FROM payments p
INNER JOIN payment_methods pm 
ON p.payment_method = pm.payment_method_id
GROUP BY date,pm.name
ORDER BY date DESC;
-- when solving a complex or arbitrary or abstract problem, divide up the complex or arbtirary or abstract problem into smaller tasks to do 