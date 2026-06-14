USE sql_invoicing;


DROP PROCEDURE IF EXISTS get_invoices_by_client;
-- recall why we use delimiters
DELIMITER ??
CREATE PROCEDURE get_invoices_by_client(client_id INT)
BEGIN
SELECT * FROM invoices i
WHERE i.client_id = client_id;
END
??
DELIMITER ;
CALL get_invoices_by_client(3);