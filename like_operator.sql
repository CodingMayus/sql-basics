-- how to return rows that match a specific string pattern, so pattern matching
-- underscores ( _ ) equate to a SINGLE character ! 
-- % = any amt of chars
-- keyword: LIKE 
SELECT * 
FROM customers
WHERE last_name LIKE 'b%';
-- all characters that start with b, % = any amt of chars

SELECT * 
FROM customers
WHERE last_name LIKE '&b&';
-- underscores ( _ ) equate to a SINGLE character ! 

SELECT * 
FROM customers
WHERE last_name LIKE 'brush%'