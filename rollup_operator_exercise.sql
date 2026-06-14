USE sql_invoicing;
SELECT pm.name AS payment_method,
SUM(amount) as total
FROM payments p
INNER JOIN  
payment_methods pm ON pm.payment_method_id = p.payment_method
GROUP BY pm.name WITH ROLLUP

-- Approach the problem step by step whatever works for you.
-- e.g.
-- Understand which two tables you will join
-- After joining, pick out the necessary aggregate functions, and columns you will need,
-- then find the correct column to group the joined tables with ( make sure its aggregable) 
-- add with rollup
