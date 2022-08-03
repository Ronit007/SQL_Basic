CREATE VIEW sales_by_client AS
SELECT c.client_id,
		c.name,
        SUM(invoice_total) AS Total_Sales
FROM clients  c
JOIN invoices i USING (client_id)
GROUP BY client_id,name;

CREATE VIEW clients_balance AS 
SELECT  c.client_id,
		name,
        SUM(invoice_total) - SUM(payment_total) AS Balance 
FROM clients c
JOIN invoices i USING(client_id)
GROUP BY client_id,name

