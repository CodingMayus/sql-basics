-- recall a virtual table,
-- a dynamic table we generated from queries that was not stored previously
-- when we query, e.g. the below query, it creates a virtual table in which we can simply treat like a normal table
-- join,filter,group the table, or use the table in a FROM clause ! 

-- WHEN WE use a SUBQUERY in a FROM clause, the virtual table that is created MUST be aliased
SELECT * 
FROM

	(SELECT 
		client_id,
		name,
		(SELECT SUM(invoice_total)
			FROM invoices
			WHERE client_id = c.client_id) AS total_sales,
		(SELECT AVG(invoice_total) FROM invoices) AS average,
		(SELECT total_sales - average ) AS difference
		FROM clients c) AS sales_summary
        WHERE total_sales IS NOT NULL;
        
        -- AS seen, writing a subquery in a FROM clause, makes the overall sql expression complex,
        -- THUS, there is likely a better way of approaching this:
        -- USING VIEWS.
			-- we store the virtual table in the DB as a view, and then we can call that view, naming it sales_summary—greatly simplifying our queries.
            
		-- MAIN TAKEAWAY:
           -- ONLY use subqueries in FROM clause for SIMPLE queries, otherwise we can just use a view or some other approach to simplify