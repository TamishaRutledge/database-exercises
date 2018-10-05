USE employees;

SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name, birth_date AS DOB
FROM employees
GROUP BY full_name, DOB
ORDER BY full_name
LIMIT 10;

-- TESTING DATA OF EMPLOYEE NUMBER SINCE MY OUTPUT WAS DIFFERENT FROM LESSON
-- SELECT emp_no, last_name, first_name FROM employees
-- WHERE emp_no = 100001;