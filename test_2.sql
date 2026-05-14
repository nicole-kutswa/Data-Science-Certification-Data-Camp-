WITH dept_stats AS(
	SELECT department,
	AVG(salary) as avg_salary,
	MAX(salary) as max_salary
	FROM employees
	GROUP BY department)

SELECT * FROM dept_stats
WHERE max_salary>4000;


WITH active_projects AS(
	SELECT * FROM projects 
	WHERE hours_worked>20)
SELECT e.name, a.project_name, a.hours_worked 
	FROM active_projects a JOIN 
	employees e ON a.emp_id= e.emp_id;

WITH dept_avg AS (
SELECT 
department,
AVG(salary) AS avg_salary
FROM employees
GROUP BY department),
above_avg_employees AS (
SELECT e.name, e.department, e.salary, d.avg_salary 
FROM employees e
JOIN dept_avg d ON e.department= d.department
WHERE e.salary >d.avg_salary)

SELECT name, department, salary, avg_salary FROM above_avg_employees;

WITH DeptAvgSalary AS (
	SELECT 
	department,
	AVG(salary) AS avg_sal
	FROM employees
	GROUP BY department)

SELECT e.name, e.salary, d.avg_sal
FROM employees e
JOIN DeptAvgSalary d ON e.department= d.department
WHERE e.salary>d.avg_sal;


