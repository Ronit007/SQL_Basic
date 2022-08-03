SELECT CONCAT(first_name, ' ', last_name) AS customer ,
		IFNULL(phone,'UNKNOWN') AS Phone
FROM customers;

SELECT order_id,
		customer_id,
        IF(YEAR(order_date) = 2019 ,"Active",'Archived') AS Status
FROM orders;

SELECT 	product_id,
		p.name,
		COUNT(*) AS orders,
        IF(COUNT(*) >1 , "Many Times","Once") AS Frequency 
FROM products p
JOIN order_items oi USING(product_id)
GROUP BY product_id
