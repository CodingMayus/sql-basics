USE sql_invoicing;
SELECT 
	client_id,
    SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id;
-- WITH ROLLUP is a POWERFUL operator for summarizing data 
-- creates an extra row/entry/record at the end, that totals ALL the values for each column from the resultant groups.
SELECT 
	client_id,
    SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id WITH ROLLUP;
-- column_id is null, because WITH ROLLUP only applies to columns that AGGREGATE values 
-- the resultant column will be null if it is NOT a column with values that can be aggregated.

-- what if we join multiple tables and group by multiple columns?
SELECT 
	state,
    city,
    SUM(invoice_total) AS total_sales
    FROM invoices i 
   INNER  JOIN clients  c
    USING (client_id)
    GROUP BY  state, state WITH ROLLUP;
    -- we see a summary entry/record/row for EACH state
    -- order matters here.
    -- it calculates a summary for EACH group as WELL as the entire result set
    
    -- CONDITIONS:
    -- only a part of MYSQL
    -- IF using WITH ROLLUP, WE CANNOT USE COLUMN ALIASES 
    