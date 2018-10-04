USE employees;

-- SELECT emp_no, first_name, last_name, gender
-- FROM employees
-- WHERE gender = 'M'
-- AND (
-- first_name IN('Irena', 'Vidya')
-- OR  first_name = 'Maya'
-- )
-- ORDER BY last_name DESC, first_name;

-- SELECT emp_no, first_name, last_name
-- FROM employees
-- WHERE last_name LIKE 'E%'
-- OR last_name LIKE '%e'
-- ORDER BY emp_no DESC;

SELECT CONCAT(first_name, ' ',last_name)
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%e';


-- SELECT emp_no, first_name, last_name, hire_date
-- FROM employees
-- WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

-- SELECT emp_no, first_name, last_name, birth_date
-- FROM employees
-- WHERE birth_date LIKE '%-12-25';

-- SELECT DATEDIFF(CURDATE(), hire_date)
-- FROM employees
-- WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
-- AND birth_date LIKE '%-12-25'
-- ORDER BY birth_date ASC , hire_date DESC;

-- RUBY RYAN COMPARISON CODE
-- SELECT first_name, last_name, hire_date, (timestampdiff(DAY, hire_date, now()) / 365) from employees where STR_TO_DATE(hire_date, '%Y-%m-%d') BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%-12-25';
-- SELECT first_name, last_name, hire_date, (timestampdiff(DAY, hire_date, now()) / 24 * 24) from employees where STR_TO_DATE(hire_date, '%Y-%m-%d') BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%-12-25' ORDER BY birth_date ASC , hire_date DESC;


-- SELECT emp_no, first_name, last_name
-- FROM employees
-- WHERE last_name LIKE '%q%';

-- SELECT emp_no, first_name, last_name
-- FROM employees
-- WHERE last_name LIKE '%q%'
-- AND last_name NOT LIKE '%qu%';