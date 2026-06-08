USE sql_store;	
SELECT *
from order_items
WHERE order_id = 6 and (quantity* unit_price) > 30