SELECT *
FROM employees e 
WHERE salary > (
		SELECT AVG(salary)
		FROM employees 
		WHERE office_id = e.office_id
				)