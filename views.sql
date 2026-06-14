-- Writing Queries can get complex, with joins, subqueries, etc...
-- We can save these complex queries or subqueries with Views, greatly simplifying our SELECT statements by us not having to rewrite these queries again.

USE sql_invoicing;

CREATE VIEW sales_by_client
AS  SELECT c.client_id,
	   c.name,
       SUM(invoice_total) AS total_sales
FROM clients c 
INNER JOIN invoices i USING (client_id) 
GROUP BY client_id,name;

-- What if we want the list of our top clients, or clients with the least sales?  
-- Instead of rewriting the above SELECT query, we can save this query in a view!
-- Refresh the table to get the view.  
-- We can treat the view just like another table.
    -- Using it in FROM clauses, joining, etc...
SELECT * FROM sales_by_client
ORDER BY total_sales DESC;

SELECT * FROM sales_by_client
JOIN clients USING (client_id);
-- In essence, Views Behave like a VIRTUAL TABLE, BUT NOTE:
-- VIEWS DO NOT store data despite seeming like a separate table, instead the data comes from the traditional tables that make up the view.
-- Views is just a means to look into the underlying table, hence its name: View.
