-- WHERE last_name LIKE `%field%` is equivalent to:
-- WHERE last_name REGEXP `field'
-- ^ = start of exp
-- $ = end of exp
-- | = or 
-- [abc]e, pattern can contain any of a,b,c
-- [abcdef]e = [a-f]e
SELECT * 
FROM customers
WHERE last_name REGEXP '^field$';
-- backticks HAVE some significance, they are NOT the same as a string
SELECT * 
FROM customers
WHERE last_name REGEXP 'field$|mac|rose';

SELECT *
FROM customers
WHERE last_name REGEXP '[gim]e'

SELECT * 