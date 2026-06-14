-- Altering -> Updating the query in the view
-- Dropping -> Deleting the view
-- USAGE:
   -- DELETING AND REMAKING VIEW IF unsatisified
   -- UPDATING if unsatisified
   -- DELETING cause obselete view
DROP VIEW sales_by_client;
 -- view must exist before dropping
 
 -- preferred way if not want to explictly drop view everytime
CREATE OR REPLACE VIEW sales_by_client AS 
SELECT
	c.client_id,
    c.name,
    SUM(invoice_total) AS total_sales
    FROM clients c
    INNER JOIN invoices i
    GROUP BY client_id, name
    
    -- GOOD PRACTICE:
		-- In the situation the query window is gone, how can one get the query behind a view?
        -- MANY good programmers store their views in SQL files and store these files under good source control ( e.g. a git repository ), which is then
        -- shared with others to help them replicate the database
			-- so create a folder called views, and put all the sql in it
            -- worse case press the wretch to see the code after mysql changes it alittle
				-- better for source control tho