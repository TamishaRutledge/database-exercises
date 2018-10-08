USE employees;
-- write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS 'Department Manager', CONCAT (e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM departments AS d
JOIN dept_manager AS dm
ON dm.dept_no = d.dept_no
JOIN employees AS e ON e.emp_no = dm.emp_no
WHERE dm.to_date > now()
ORDER BY dept_name;

-- Find the name of all departments currently managed by women.

SELECT d.dept_name AS 'Department Manager', CONCAT (e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM departments AS d
JOIN dept_manager AS dm
ON dm.dept_no = d.dept_no
JOIN employees AS e ON e.emp_no = dm.emp_no
WHERE dm.to_date > now() AND e.gender = 'F'
ORDER BY dept_name;

-- Find the current titles of employees currently working in the Customer Service department.

SELECT t.title, COUNT(t.title) as 'Count'
FROM titles AS t
JOIN dept_emp AS de ON de.emp_no = t.emp_no
JOIN departments AS d on d.dept_no = de.dept_no
WHERE t.to_date > now()
AND de.to_date > now()
AND d.dept_name = 'Customer Service'
GROUP BY t.title;

-- Find the current salary of all current managers.

SELECT d.dept_name AS 'Department Manager', CONCAT (e.first_name, ' ', e.last_name) AS 'Manager Name', s.salary
FROM departments AS d
JOIN dept_manager AS dm ON dm.dept_no = d.dept_no
JOIN employees AS e ON e.emp_no = dm.emp_no
JOIN salaries AS s ON s.emp_no = e.emp_no
WHERE dm.to_date > now()
AND s.to_date > now()
ORDER BY s.salary DESC, d.dept_name;