-- Consider the BELOW example,
-- We see here we created separate groups from the invoices table according to the client_I-d,
-- and using the aggregate function to sum all the values in each group with the corresponding aggregate function.
-- WHAT IF, we wanted ONLY the entries/records/rows with total_sales GREATER than 500?
-- Intuitively we would use filter with WHERE, but this can only be done with the original invoices table,
-- Explicitly, we note the WHERE clause must COME BEFORE, the GROUP BY clause, hence, we technically can never filter the grouped table that doesn't exist yet.
-- HOW DO WE FILTER A GROUPED TABLE?
-- THE HAVING CLAUSE ! 
-- basically a filter for after you grouped rows.

-- CONDITIONS OF USE:
-- THE columns used in the having clause, must be in the SELECT clause
-- This is in contrast, to the WHERE clause ! 
SELECT 
	client_id,
    SUM(invoice_total) AS total_sales,
    COUNT(invoice_total) AS total_invoices, 
    COUNT(*) AS number_of_invoices 
    FROM invoices
    GROUP BY client_id
    HAVING  total_sales> 500 AND number_of_invoices > 5;
    