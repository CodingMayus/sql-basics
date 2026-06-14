-- SOME very common, useful string functions

SELECT LENGTH("3ekooqekowq");
-- RETURNS length of string
SELECT UPPER("DSPOdsopdosapdpp");
-- CONVERTS string to UPPERCASE
SELECT LOWER("daspodapOPSDAOPDSAOPDS");
-- CONVERTS string to lower case

-- WE THEN have three functions, for removing unnecessary spaces in strings, which is very important
-- in cases where users may input unnecessary spaces.

-- 1.
SELECT LTRIM('                sky');
-- sky
-- CUTS LEADING spaces.
-- 2.
SELECT RTRIM('sky                         ');
-- Cuts TRAILING spaces 
-- 3.
SELECT TRIM('          sky                     ');
-- CUTS leading AND trailing spaces.

-- TO call chars of a string
-- two args:
SELECT LEFT('KINDERGARDEN',4);
-- KIND
SELECT RIGHT('KINDERGARDEN',6);
-- GARDEN

SELECT SUBSTRING('KINGERGARDEN', 1,2);
-- 1-INDEXXED
-- the third and last argument is optimal, allowing one to write prefixxes with ease
-- suffixes are similarily trivial to write

SELECT LOCATE('n','kindergarden');
-- returns the first appearance ofa  character or a sequence of characers.
-- LOCATE is NOT case sensitive!
-- IF the search criteria cannot be met, it returns 0 
-- 3


-- we can also replace a character or a sequence of characters in a string
-- three args
SELECT REPLACE('KINDERGARTEN', 	'GARTEN','GARDEN');
-- First is our string
-- Second is WHAT YOU WANT TO REPLACE
-- Third, is the replacement
SELECT CONCATE("Matthew", " ", "Yu" );

-- A conventient list is here https://dev.mysql.com/doc/refman/8.4/en/string-functions.html
-- note this is MYSQL specific, if you use other workbenches search up the according one 