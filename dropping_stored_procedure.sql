DROP PROCEDURE IF EXISTS get_clients;
-- preferred way in case the procedure doesnt exist ( will error otherwise ) 
-- Like views, its good practice to store the drop, and create stored procedure codes in a separate sql file and store that file
-- under source control like GIT, so then you can share the git repo with others with ease with all its views and store procedures to get the exact same db ! 

DELIMITER $$
	CREATE PROCEDURE get_clients()
	BEGIN
	SELECT * FROM clients;	
END $$

DELIMITER ;