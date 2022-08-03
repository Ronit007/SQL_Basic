SELECT *
FROM order_items oi 
JOIN order_items_notes oin 
	ON oi.order_id = oin.order_id 
    AND oi.product_id = oin.product_id
