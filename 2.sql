SELECT o.order_id,
		o.order_date,
        c.first_name,
        c.last_name,
        os.name AS status 
FROM customers c
JOIN orders o 
	ON c.customer_id = o.customer_id
JOIN order_statuses os
	ON o.status = os.order_status_id