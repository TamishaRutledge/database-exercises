USE employees;

-- SELECT DISTINCT last_name FROM employees
-- ORDER BY last_name DESC
-- LIMIT 10;

-- SELECT DISTINCT emp_no, first_name, last_name, hire_date, birth_date
-- FROM employees
-- WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
-- AND birth_date LIKE '%-12-25'
-- ORDER BY birth_date ASC , hire_date DESC
-- LIMIT 5 OFFSET 45;

SELECT CONCAT('Hello ', 'Codeup', '!');
SELECT NOW();
SELECT CONCAT(
    'Teaching people to code for ',
    UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
    ' seconds'
);