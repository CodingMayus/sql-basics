SELECT *
from orders
WHERE order_date >= '2019-01-01'
-- where clause is specifically for filtering for certain rows,
-- not case sensitive
-- standard format to store dates in sql is strings year-month-day