USE sql_store;

SELECT *
from products
WHERE quantity_in_stock IN (49,38,72);