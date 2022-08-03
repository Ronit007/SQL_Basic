SELECT  e.employee_id,
		e.first_name,
        m.first_name as MANAGER
FROM employees e
LEFT JOIN  employees m
	ON e.reports_to = m.employee_id 
