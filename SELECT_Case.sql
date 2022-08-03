SELECT order_id,
		CASE 
			WHEN YEAR(order_date) = 2019 THEN "ACTIVE"
            WHEN YEAR(order_date) = 2018 THEN "LAST YEAR"
            WHEN YEAR(order_date) = 2017 THEN "Archived"
            ELSE 
            "Future"
            END AS Category 
FROM orders; 


SELECT CONCAT(first_name, ' ',last_name) AS Name,
		points,
        CASE 
			WHEN points >3000 THEN "Gold"
			WHEN points BETWEEN 2000 AND 3000 THEN "SILVER" 
			WHEN points <2000 THEN "Bronze"
            ELSE "FAKE"
            END AS Type 
FROM customers
ORDER BY points DESC