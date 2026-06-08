SELECT * from sql_store.customers
LIMIT 3;
-- if the amount of limit is greater than the number of row entries, then the total amount of row entries will be returned.  
-- LIMIT is good for paginating the data !
-- e.g. page 1 we want the first 3 entries.
--      page 2 we want the next 3 entries.
-- thus we have: LIMIT a,b, where a is the offset and b is the amount 

-- REMEMBER: the LIMIT clause ALWAYS comes at the end ! 
-- ORDER is: SELECT, FROM, WHERE, ORDER BY, LIMIT 
SELECT * from sql_store.customers
LIMIT 3,2;