-- What if you have MULTIPLE IF predicates?
-- IF statement only allows a single test predicate, we could do nested if-stmts, but
-- we can use, instead, the CASE operator.
        -- USED with WHEN keyword followed by the condition 
        -- then the THEN keyword followed by the returned result.
        -- the CASE block ends with the END keyword.
        
        
-- usage:
-- in cases where u need multiple test expressions and want to return a different result
-- per conditions 
SELECT order_id,
CASE
	WHEN YEAR(order_date) = YEAR(NOW()) THEN "Active"
    WHEN YEAR(order_date) = 2018 THEN "Last Year"
    WHEN YEAR(order_date) <= 2017 THEN "Archived"
    ELSE "FUTURE"
 END AS category
 FROM orders