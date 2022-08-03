SELECT  s.name AS Name,
		p.name AS Product,
        p.quantity_in_stock
FROM shippers s, products p
ORDER BY s.name