USE sql_store;
SELECT
c.customer_id, CONCAT(c.first_name," ", c.last_name ) AS full_name,
SUM(oi.unit_price * oi.quantity) as total_spent
FROM customers c 
INNER JOIN orders o
USING (customer_id)
INNER JOIN order_items oi USING (order_id)
WHERE c.state = 'VA' 
GROUP BY customer_id, full_name
HAVING total_spent > 100;

-- honestly dont worry too much about the columns first
-- first focus on joinning the table, and treat these joinned tables as one table, before
-- deciding on the columns, its easier to handle, espifically for complex queries.

-- RULE of thumb:
-- If you have an aggregate function in the SELECT statement and you're grouping the data, 
-- u should group by ALL columns in the select clause ( think why ) -- if not, potientally, we might display a column that is not aggregable or breaks the group 
-- keeps things explicit  