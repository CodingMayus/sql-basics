-- subqueries are in parentheses 
-- mysql, first calculates the query in parenthesis, getting the value ( which ig has to be a 1 by 1 table ), from the select stmt then gets
-- all the products whose unit price is greater than the product's price with product_id=3,
-- Typically subqueries are written in WHERE clause, but can also be in the FROM clauses and SELECT clauses.
USE sql_store;
SELECT 
* FROM products
where
unit_price > (SELECT unit_price FROM products
WHERE product_id =3);