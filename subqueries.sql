SELECT *
FROM (
		SELECT	client_id,
				name,
				(SELECT SUM(invoice_total)  
				FROM invoices
				WHERE c.client_id = client_id) AS total_Sales,
				(SELECT AVG(invoice_total) 
				FROM invoices) AS average,
				(SELECT total_sales - average) AS Difference 
		FROM clients c
) AS Complete WHERE total_sales IS NOT NULL 
