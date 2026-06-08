-- 2:17:04

-- implicit-syntax
USE sql_store;
SELECT  sh.name AS shipper, p.name AS product FROM shippers sh,products p;

-- explicit-syntax
SELECT sh.name AS shipper,p.name AS product FROM shippers sh 
CROSS JOIN products p
ORDER BY sh.name;

