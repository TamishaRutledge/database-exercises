USE employees;

-- Find all the employees with the same hire date as employee 101010 using a sub-query.

SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
    SELECT from_date
    FROM dept_emp
    WHERE emp_no = 101010
);

-- Find all the titles held by all employees with the first name Aamod.

SELECT title, emp_no
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
)
GROUP BY title, emp_no;

-- Find all the current department managers that are female.
