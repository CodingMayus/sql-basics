-- 2:06:05
USE sql_hr;
SELECT e.employee_id, CONCAT(e.first_name, " ", e.last_name) AS full_name, m.first_name AS manager FROM sql_hr.employees e
LEFT OUTER JOIN  sql_hr.employees m ON e.reports_to = m.employee_id
ORDER BY manager DESC