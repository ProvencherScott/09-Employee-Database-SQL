-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, 
e.last_name,
e.first_name, 
e.sex, 
s.salary
FROM employees as e
JOIN salaries s ON (e.emp_no = s.emp_no);

-- 2. List first name, last name, and hire date for employees who were hired in 1986.



