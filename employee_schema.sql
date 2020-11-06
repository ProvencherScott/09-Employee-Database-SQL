DROP Table departments

CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

select * FROM departments


DROP Table employees

	
CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR (5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR (10) NOT NULL,
	hire_date DATE NOT NULL
);

select * FROM employees

DROP Table dept_employees

CREATE TABLE dept_employees (
	emp_no INT PRIMARY KEY,
	dept_no VARCHAR (10),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * FROM dept_employees

DROP Table salaries

CREATE TABLE salaries (
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * FROM salaries

Drop TABLE titles
CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL PRIMARY KEY
	title VARCHAR (30),
	
);









