SELECT  c.customer_id,
		c.state,
		c.first_name,
	   SUM(oi.quantity*oi.unit_price) AS Total_spent
FROM customers c
JOIN orders o USING(customer_id)
JOIN order_items oi USING(order_id)
GROUP BY c.customer_id,
		c.state,
		c.first_name
	HAVING c.state = 'va' AND Total_spent > 100 