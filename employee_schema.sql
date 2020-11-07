--Drop TABLE titles
CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR (30) NOT NULL
);

Select * FROM titles

--DROP Table departments

CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

select * FROM departments


--DROP Table employees

CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR (5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR (10) NOT NULL,
	hire_date DATE NOT NULL,
		FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

select * FROM employees

--DROP Table dept_employees

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR (4) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
		
	
	--FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	--FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * FROM dept_emp

--DROP Table salaries

CREATE TABLE salaries (
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * FROM salaries

--DROP TABLE dept_manager

CREATE TABLE dept_manager(
	dept_no VARCHAR (4) NOT NULL,
	emp_no INT NOT NULL PRIMARY KEY,
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

Select * FROM dept_manager








