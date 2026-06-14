-- MOSH: "One of the MOST useful built-in functions for working with numeric, datetime, and string values."
SELECT ROUND(5.73,1);
-- 	optional second argument for percision
SELECT ROUND(5.73,2);	
-- 5.73
SELECT ROUND(5.73);	
-- 6

-- TRUNCATE keeps only the first x decimal places specified in the second argument.
SELECT TRUNCATE(5.73321312,0);
-- output:5 
SELECT TRUNCATE(5.732332, 2);
-- output: 5.73

SELECT CEILING(7.3);
-- 8
SELECT FLOOR(7.3);
-- 7
SELECT ABS(-3219309123);


SELECT RAND();
-- RAND() outputs a RANDOM number from 0 and 1 

-- COMPLETE list of MYSQL NUMERIC FUNCTIONS: https://dev.mysql.com/doc/refman/8.4/en/numeric-functions.html
