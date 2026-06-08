SELECT order_id, first_name, last_name, c.customer_id FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id

# in situations where two tables have the same columns-names, we have to prefix this column with the desired table name to prevent
# ambiguity.