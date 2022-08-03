-- USING ONLY SUBQUERY  
SELECT 	customer_id,
		first_name,
		last_name
FROM customers 
WHERE customer_id IN (
			SELECT customer_id
            FROM order_items
            JOIN orders USING(order_id)
            WHERE product_id = 3 
            );

-- USING ONLY JOIN 
SELECT 	DISTINCT customer_id,
		first_name,
		last_name
FROM customers 
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE oi.product_id = 3 