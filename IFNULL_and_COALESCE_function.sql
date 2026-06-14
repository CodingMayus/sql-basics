USE sql_store;
-- if the shipper_id is NULL, the null argument value will be replaced with NOT assigned.
SELECT order_id,
IFNULL(shipper_id, 'NOT assigned') AS shipper
FROM orders;
-- The more flexible function is COALESCE 
SELECT 
order_id,
COALESCE(shipper_id,comments,'NOT assigned') as shipper
FROM orders;
-- The difference b/w COALESCE, and IFNULL, is that the latter provides a backup in case the first 
-- argument is NULL,
-- COALESE, can take an arbitrary amount of argumetns and will return the first argument that is NOT null! 
-- COALESE: come together to form one mass, or whole