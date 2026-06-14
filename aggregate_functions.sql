-- Recall that functions is code that we can reuse,
-- Hence, 
-- Aggregate functions
-- Queries that Summarize data
-- Aggregate: a whole formed by combining several ( typically disparate ) elements.
-- IMPORTANT:
  -- Aggregate functions only operate on NON-NULL values, so when you use COUNT(), or AVG,
  -- the entries/rows/records where the desired column is NULL, will not be considered,
  -- and treated as if it didnt exist ! 
-- MAX()
-- MIN()
-- AVG()
-- SUM()
-- COUNT()

USE sql_invoicing;
SELECT MAX(invoice_total) AS highest, 
	  MIN(invoice_total) AS lowest,
      AVG(invoice_total) AS average FROM invoices;
      
      -- we typically associate these aggregate functions with numerical values,
      -- but we can also do this for Dates and Strings 
SELECT MAX(payment_date) AS highest,
		MIN(payment_date) AS lowest,
        AVG(invoice_total) AS average,
        SUM(invoice_total) AS total,
        COUNT(invoice_total) AS number_of_invoices,
        COUNT(payment_date) AS count_of_payments,  -- some invoices are not paid, and thus null, hence less than # of invoices
		COUNT(*) AS total_records    -- if youw ant to count the number of things without respect to any null values, use this
    FROM invoices;    
-- You don't have to JUST use columns, we can ALSO write an expression.
-- e.g.

SELECT 
	MAX(invoice_total) AS highest,
    MIN(invoice_total) AS lowest,
    AVG(invoice_total) As average,
    SUM(invoice_total*2) AS total, -- mysql will get the values from the invoice_total column in every row/entry/record in the invoices table, then multiply ALL the values by 2 ! 
    COUNT(*) AS total_records
FROM invoices;

-- ADDING a SEARCH criteria / Filter (summarizes data only for records/entries/rows  that meet a certain condition)alter
-- THINK WHICH CLAUSE this is.

SELECT 
	MAX(invoice_total) AS highesat,
    MIN(invoice_total) AS lowest,
    AVG(invoice_total ) AS average,
    SUM(invoice_total * 1.1) as total,
    COUNT(client_id ) as total_records
    FROM invoices
    WHERE invoice_date > '2019-07-01';
    -- invoices for the second half of the year.
    -- notice how its summarizing data only for the entries/rows/records that match the condition .
    -- the issue here, is that the invoices table can have invoices with the SAME client-id,
    -- but we only care about the amount of DISTINCT clients, hence we use the keyword DISTINCT.alter
    
    
    SELECT 
		MAX(invoice_total) AS highest,
        MIN(invoice_total) AS lowest,
        AVG(invoice_total) AS average,
        SUM(invoice_total *1.1 ) AS total,
        COUNT(DISTINCT client_id ) AS total_records
        FROM invoices
        WHERE invoice_date > '2019-07-01'
        
-- process
-- filters the table so only the desired entries/records/rows remain
-- retrieves the column
-- the DISTINCT keyword, removes duplicates.
-- we have a set, now, which depending on the aggregate function,
-- will do the correct operation on.
-- 1. Filter rows (WHERE clause, if any)
-- 2. Take client_id column
-- 3. Deduplicate it
-- 4. Count what remainz

-- I guess these "sets" are called "GROUPS"?,
-- These aggregate functions implicitly create a group based on the entries/records/rows on the desired column