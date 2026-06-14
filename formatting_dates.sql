-- IN SQL, its fine that dates are in year-month-day format
-- for users, we want good readability, hence format matter
SELECT DATE_FORMAT(NOW(),'%Y');
-- %Y = 4 letter year
-- %Y = 2 letter year
SELECT DATE_FORMAT(NOW(),'%y');
-- %M => MONTH name
-- %m => month number
SELECT DATE_FORMAT(NOW(), '%M');
SELECT DATE_FORMAT(NOW(), '%m');

SELECT DATE_FORMAT(NOW(), '%d %Y %M');
-- honestly don't have to memorize just search it up:
-- mysql date format string, and click the first result
-- https://dev.mysql.com/doc/refman/8.4/en/date-and-time-functions.html
-- there you can also find all the %_ chars ( format characters  ) as well as other date and time functions
--
SELECT TIME_FORMAT(NOW(), '%H:%i %p');
-- %H is the hour
-- %i is the minute