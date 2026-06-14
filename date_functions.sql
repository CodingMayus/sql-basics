SELECT NOW(),CURDATE(), CURTIME();
-- NOW() is basically CURDATE() + CURTIME()
-- WE have a lot of functions for extracting specific details/components in a date/time

SELECT YEAR(CURDATE());
SELECT YEAR(CURTIME());
SELECT YEAR(NOW());
-- all works lol
SELECT MONTH(CURDATE());
-- MONTHs in number notation!
SELECT MONTH(CURTIME());
 SELECT MONTH(NOW());
 
 SELECT DAY(CURDATE());
 SELECT DAY(CURTIME());
 SELECT DAY(NOW());
 
 -- HOUR,MINUTE,SECOND
 -- THESE specific component functions ALL return integers, but there's TWO that returns strings.
 SELECT DAYNAME(NOW());
  SELECT MONTHNAME(NOW());
  
  SELECT EXTRACT(DAY FROM NOW());
  -- PART OF OFFICAL SQL language
  -- WORKS ON ALL PLATFORMS ( SQL SERVER, ORACLE, MYSQL )
  -- standard way of getting stuff
  SELECT EXTRACT(YEAR FROM NOW());