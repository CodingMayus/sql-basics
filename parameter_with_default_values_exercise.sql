-- MYSQL int sizes 

-- THIS Way of creating procedures differs from creating views where we can simply do CREATE OR REPLACE VIEW
DROP PROCEDURE IF EXISTS get_payments;
DELIMITER ??
CREATE PROCEDURE get_payments(client_id INT(4), payment_method_id TINYINT(1))
BEGIN
SELECT * FROM payments p
WHERE p.client_id = IFNULL(client_id, p.client_id)AND p.payment_method = IFNULL(payment_method_id, p.payment_method);
END
??
DELIMITER ;

CALL get_payments(NULL,NULL);
CALL get_payments(3,NULL);
CALL get_payments(3,1);

-- Many devs, don't know the difference between Arguments and Parameters 
    -- Parameters are the placeholders— little holes we define in our procedures and functions
    -- Values we supply to these parameters are CALLED arguments
    -- i knew that bruh