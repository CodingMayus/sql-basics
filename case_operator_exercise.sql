USE sql_store;
SELECT CONCAT(first_name, " ", last_name) AS customer, 
points, 
CASE
	WHEN points > 3000 THEN 'GOLD'
    WHEN points <= 3000 AND points >= 2000 THEN 'SLIVER'
    WHEN points >= 0 AND points < 2000 THEN 'BRONZE'
END AS category
    FROM customers
    ORDER BY points DESC;