CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(30)
);

select * FROM departments

CREATE TABLE dept_employees (
	emp_no INT PRIMARY KEY,
	dept_no VARCHAR (10),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * FROM dept_employees
	
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR (10),
	birth_date DATE,
	first_name VARCHAR (30),
	last_name VARCHAR (30),
	sex VARCHAR (10),
	hire_date DATE
);

select * FROM employees


