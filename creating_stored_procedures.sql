USE sql_invoicing; 



-- its common convention amongst sql developers to have this lowecase underscore naming convention.
-- must terminate every stmt in the body of a stored-procedure with a semi-colon in MYSQL, maybe not in SQL server.
-- To prevent mysql from executing the stmts in the body separately, we do:
-- THE $$ is just convention, anything works ( e.g. // ) 
-- may not have to do this in SQL serverget_clients
-- DELIMITER $$

-- CREATE PROCEDURE get_clients()
-- BEGIN
-- SELECT * FROM clients; 
-- END
-- $$
-- DELIMITER ;
-- Tricky thing:
     -- we want MYSQL to treat the entire code from lines 5 -8, as ONE unit, not as separate statements to be executed separately.
     

-- Call procedures with CALL statments
     -- usually we do this in application code not in sql, but this is how u do ti
CALL get_clients();