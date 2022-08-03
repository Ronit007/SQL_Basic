SELECT 	customer_id,
		first_name,
		last_name
FROM customers 
WHERE customer_id IN (
			SELECT customer_id
            FROM order_items
            JOIN orders USING(order_id)
            WHERE product_id = 3 
            )
            
            
            