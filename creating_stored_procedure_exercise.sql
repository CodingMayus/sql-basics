-- u should probably intent code in the body
-- The MySQL DELIMITER command is used to change the default delimiter (semicolon ;) to another character or string. This is particularly useful when defining stored procedures or triggers that contain multiple SQL statements separated by semicolons.
-- If you dont want to create procedures in sql files, we can just do it explictly with MYSQL workbench 

DELIMITER ??
CREATE PROCEDURE get_invoices_with_balance()
	BEGIN
	SELECT * FROM invoices
	WHERE invoice_total - payment_total > 0; 
	END
??
DELIMITER ;

CALL get_invoices_with_balance();
