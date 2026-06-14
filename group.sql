-- The GROUP BY statement essentially allows one to group rows that have the same values/properties into summary rows ! 
-- e.g. FIND the number of customers in each country
-- The GROUP-BY statement is almost always used with an AGGREGATE function like COUNT(), MAX(), MIN(),SUM(), AVG() to perform calculations on each group.alter

SELECT * FROM customers
WHERE points >=500
GROUP BY POINTS
