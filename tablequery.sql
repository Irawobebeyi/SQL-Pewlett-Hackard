----------------departments-----------------------

DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    dept_no VARCHAR(10), 
    dept_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (dept_no)
);

SELECT * FROM departments;

-------------------titles--------------------

DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    PRIMARY KEY(title_id)
);

SELECT * FROM titles;

--------------employees-------------------------

DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
    emp_no INT NOT NULL,
    title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    sex	VARCHAR (2) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;

------------dept_emp--------------------------

DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

-----------------dept_manager----------------------

DROP TABLE IF EXISTS dept_manager 

CREATE TABLE dept_manager(
    dept_no VARCHAR (10),
    emp_no INT NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
    
);

SELECT * FROM dept_manager;


------------------salaries--------------------

DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary BIGINT NOT NULL,
    FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);