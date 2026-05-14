SELECT name, department, salary 
FROM employees 
WHERE salary>3500 
ORDER BY salary DESC;

SELECT department,
    COUNT(*) AS employee_count,
    AVG(salary) AS avg_salary,
    MAX(salary) AS max_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 3500;

SELECT e.name, p.project_name, p.hours_worked
FROM employees e
INNER JOIN projects p ON e.emp_id = p.emp_id;

SELECT name, department, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT project_name,
	AVG(hours_worked) AS avg_hours
FROM projects
WHERE start_date>'2023-1-1'
GROUP BY project_name
ORDER BY AVG(hours_worked) DESC;

SELECT name, salary, department, AVG(salary) OVER(PARTITION BY department) as dept_avg_salary FROM employees

