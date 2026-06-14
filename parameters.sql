-- we can use parameters to pass values to stored procedures
-- AND send values to the calling program ( in application code ) 
-- TYPE of parameter must be established.
DROP PROCEDURE IF EXISTS get_clients_by_state;
DELIMITER ??
	CREATE PROCEDURE get_clients_by_state(state CHAR(2) )
    -- to prevent clashing of column names, people prefix the parameters like p_state, pState, state_parm, or just use alias in table like below
		BEGIN
			SELECT * FROM clients c
            WHERE c.state = state;
		END
??
DELIMITER ;
CALL get_clients_by_state('CA');
-- If the parameter is not provided => ERROR 