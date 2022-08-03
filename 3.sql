SELECT c.name,
		pm.name as Payment_Method,
        c.client_id,
        c.address
FROM payments p
JOIN clients c 
	ON p.client_id = c.client_id 
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id 
ORDER BY client_id