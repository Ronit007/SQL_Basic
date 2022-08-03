SELECT *
FROM products p 
WHERE NOT EXISTS (
		SELECT product_id
		FROM order_items 
		WHERE p.product_id = product_id
			 )