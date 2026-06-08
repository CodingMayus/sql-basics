-- counter part to inner joins
SELECT c.customer_id,
	   c.first_name,
	   o.order_id
       FROM customers c 
JOIN orders o
	ON c.customer_id = o.customer_id;
    -- the issue or this is that, we CANNOT see the customers, who DO NOT have an ORDER ( and HENCE cannot meet the ON condition !  ) 
    -- this is the motivation of the OUTER join
    
    -- two types of OUTER JOINS
    -- LEFT JOIN
    -- ALL the entries in the left table are returned no matter if the conditions are met or not 9 will return null if not ) 
    -- RIGHT JOIN
    -- ALL the entries in the right table are returned no matter if the conditions are met or not ( will return null if not )
    
    SELECT c.customer_id, c.first_name, o.order_id 
    FROM customers c
    LEFT JOIN orders o 
    ON c.customer_id = o.customer_id
    ORDER BY c.customer_id
    -- right joinr eturns the same result as an inner join because the amount of rows will depend on the number of orders, which is exactly the same function as the 
    -- original inner join, things will ofc be different, if the there was an order which had a customer_id that was NOT in the customers table, which is probably impossible 
    -- Its technically LEFT OUTER JOIN
    -- AND RIGHT OUTER JOIN, but the OUTER keyword, like INNER is OPTIONAL 
    -- it is best practice to avoid using RIGHT OUTER JOINS, because it can get very complex worrying about LEFT AND RIGHT AND INNER JOINS for more complex data bases ! 
    -- MAKING it more difficult to visualzie and understand