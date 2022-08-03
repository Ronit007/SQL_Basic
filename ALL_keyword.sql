SELECT *
FROM invoices
WHERE invoice_total >(	
	SELECT MAX(invoice_total)
	FROM invoices 
	WHERE client_id = 3
					);
                    
                    
-- ALL Keyword
SELECT *
FROM invoices
WHERE invoice_total > ALL(	
	SELECT invoice_total
	FROM invoices 
	WHERE client_id = 3
					);

-- ANY Keyword is also same as IN 
SELECT *
FROM invoices
WHERE invoice_total > ANY(	
	SELECT invoice_total
	FROM invoices 
	WHERE client_id = 3
					)
                    