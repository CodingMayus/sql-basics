SELECT DATE_ADD(NOW(), INTERVAL 1 DAY );
-- to add a date part ot the date-time value
SELECT DATE_ADD(NOW(), INTERVAL 1 YEAR); 

-- to go back in time, two ways
-- 1.
SELECT DATE_ADD(NOW(), INTERVAL -1 YEAR);
SELECT DATE_SUB(NOW(), INTERVAL 1 YEAR);

-- Difference b/w two dates
SELECT DATEDIFF('2007-09-28 01:00', '2026-06-14');
-- first arg - second arg 


-- HOW MUCH SECONDS ELAPSED SINCE MIDNIGHT
 SELECT TIME_TO_SEC(NOW()) - TIME_TO_SEC('9:00');