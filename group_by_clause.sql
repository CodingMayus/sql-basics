SELECT 
 SUM(invoice_total) AS total_sales
 FROM invoices;
 -- we know how to summarize data from one column from a table, but what if you want 
 -- to know the total-sales for EACH client displayed as a total?
-- We use the GROUP BY clause to group by one or more data 
 
 SELECT client_id,
 SUM(invoice_total) AS total_sales
 FROM invoices
WHERE invoice_date > '2019-07-01'
 GROUP BY client_id
 ORDER BY total_sales DESC;
 -- here the aggregate function is applied to as many groups/sets as there are client_ids,
 -- as all the invoices are grouped up according to the latter. 
 -- by default, the rows are sorted according to the column listed in the GROUP-BY clause
 
-- the order matters of clauses matter here
-- SELECT, FROM, WHERE, GROUP BY, ORDER BY 



-- With groups we can also group BY  multiple columns FROM DIFFERENT TABLES
-- e.g.
-- grouping total-sales BY state

 SELECT 
	state,
    city,
    SUM(invoice_total) AS total_sales
FROM invoices i
JOIN clients c  USING (client_id)
GROUP BY c.state, c.city
ORDER BY total_sales DESC 
-- intuitively speaking, we can just consider after the join, we have one BIG composite table made from the two tables,
-- we can then pick and choose the columns/criteria we wish to group by, and aggregate with aggregate functions 

-- see here, that WHEN we group by MULTIPLE columns, we get one record FOR EACH combination of the columns