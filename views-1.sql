CREATE VIEW invoice_with_balance AS 
SELECT
		invoice_id,
		number,
        client_id,
        invoice_total,
        payment_total,
        invoice_total - payment_total AS Balance,
        invoice_date,
        due_date,
        payment_date
FROM invoices           
WHERE (invoice_total - payment_total)  > 0;

DELETE FROM invoice_with_balance
WHERE invoice_id = 1 