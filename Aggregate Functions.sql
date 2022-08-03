SELECT 	  
	"First Half of 2019" AS data_range,
    SUM(invoice_total) AS total_sales,
    SUM(payment_total) AS total_payments,
	SUM(invoice_total - payment_total) AS what_we_expect 
FROM invoices
WHERE invoice_date between '2019-01-01' AND '2019-06-01'
UNION 
SELECT 	  
	"Second Half of 2019" AS data_range,
    SUM(invoice_total) AS total_sales,
    SUM(payment_total) AS total_payments,
	SUM(invoice_total - payment_total) AS what_we_expect 
FROM invoices
WHERE invoice_date > '2019-07-01'
UNION 
SELECT 	  
	"Second Half of 2019" AS data_range,
    SUM(invoice_total) AS total_sales,
    SUM(payment_total) AS total_payments,
	SUM(invoice_total - payment_total) AS what_we_expect 
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-12-30'
  