USE sql_invoicing;

-- default values can easily be done with IF stmt, assuming no/no valid parameter was provided?
-- variables ! 
-- still requires the correct # of args 
DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state(state CHAR(2))
BEGIN
IF state IS NULL
THEN
SET  state = 'CA';
END IF;
SELECT * FROM clients c
WHERE state = c.state;
END
$$
DELIMITER ;
CALL get_clients_by_state('CA');
CALL get_clients_by_state(NULL);


-- we can also just use an if-else stmt

DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state(state CHAR(2))
BEGIN
IF state IS NULL
THEN
SELECT * FROM clients;
ELSE
SELECT * FROM clients c
WHERE state = c.state;
END IF;
END
$$
DELIMITER ;
CALL get_clients_by_state(NULL);

-- less verbtose way ( think why ):

DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state(state CHAR(2))
BEGIN
SELECT * FROM clients c
WHERE state = IFNULL(state,c.state);
END
$$
DELIMITER ;