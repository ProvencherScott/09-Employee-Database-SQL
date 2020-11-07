-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no "Employee Number",
e.last_name "Last Name",
e.first_name "First Name", 
e.sex "Sex",
s.salary "Salary"
FROM employees as e
JOIN salaries s ON (e.emp_no = s.emp_no);

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
Select first_name "First Name",
last_name "Last Name",
hire_date "Hire Date"
FROM employees
Where hire_date BETWEEN '01/01/1986' AND '12/31/1986'
ORDER BY hire_date

