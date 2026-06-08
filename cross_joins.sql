-- use cross joins to join every single record/entry from one table to every record/entry in another 
SELECT c.first_name as customer,p.name as product FROM customers c 
CROSS JOIN products p 
ORDER by c.first_name;
-- ideally we use cross joins to list out ALL the possible combinations for different attribute tables like a color table, a size table, etc...->
-- above is the explict way to use a cross join
-- there is also an implicit way, which is basically the implicit way of using an join WITHOUT the use of WHERE e.g.:alter
SELECT c.first_name as customer,p.name as product FROM customers c, products p ORDER BY c.first_name;