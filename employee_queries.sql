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

-- 3. List the manager of each department with the following information: department number, 
-- department name, the manager's employee number, last name, first name.
Select d.dept_no "Department Number",
d.dept_name "Department Name",
dm.emp_no "Employee Number",
e.last_name "Last Name",
e.first_name "First Name"
FROM employees as e
JOIN dept_manager dm ON (e.emp_no = dm.emp_no)
JOIN departments d ON (dm.dept_no = d.dept_no)
ORDER BY dm

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

Select e.emp_no "Employee Number",
e.last_name "Last Name",
e.first_name "First Name",
d.dept_name "Department Name"
FROM employees as e
JOIN dept_emp de ON (e.emp_no = de.emp_no)
JOIN departments d ON (de.dept_no = d.dept_no)
ORDER BY e

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Select first_name "First Name",
last_name "Last Name",
sex "Sex"
From employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'





