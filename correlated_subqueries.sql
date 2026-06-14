-- Select Employees whose salary is
-- above the average in their office.

USE sql_hr;
-- SELECT * FROM employees GROUP BY office_id;
-- (SELECT address, AVG(salary) FROM employees INNER JOIN offices USING (office_id)
-- GROUP BY address);

-- SELECT * FROM employees INNER JOIN offices USING (office_id)
-- GROUP BY address;
-- many navie ways to do it, heres one way:
-- For each employee
-- calculate the average salary for employee.office,
-- return th employee if salary > avg

 SELECT * FROM employees a
WHERE salary > (SELECT AVG(salary) FROM employees e INNER JOIN offices o USING (office_id ) GROUP BY o.office_id HAVING a.office_id = o.office_id);
-- bruh i didnt have to group anything here...
SELECT * FROM employees e 
WHERE salary > ( 
	SELECT AVG(salary)
    FROM employees
    WHERE office_id = e.office_id ) ;
    
-- These types of queries, where for each type we summarize data according to property data in each entry/record/row for a table, is called a correlated subquery.

-- ITS CALLED correlated subquery because in the subquery, there is a correlation with the outer query ( e.g. referencing the alias/table from the outer query ) 
-- In contrast, all the other subqueries are called uncorrelated subqueries.
-- For uncorrelated subqueries, the uncorrelated subquery is executed only ONCE
-- For correlated subqueries, the correlated subquery is EXECUTED FOR EVERY ROW
-- Trivially correlated subqueries CAN BE SLOW! 	