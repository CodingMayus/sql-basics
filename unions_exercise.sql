-- 2:24:05
-- < 2000 - bronze
-- 2000-3000 - sliver
-- > 3000 - gold

USE sql_store;
SELECT customer_id,first_name,points,'BRONZE' as type FROM customers
WHERE points<2000
UNION
SELECT customer_id,first_name,points, 'SLIVER' as poop FROM customers
WHERE points >=2000 AND points<=3000
UNION
SELECT customer_id,first_name,points, 'GOLD' as pee FROM customers
WHERE points>3000 
ORDER BY first_name
;