CREATE TABLE departments(
dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
dept_name VARCHAR(60))

SELECT * from departments

CREATE TABLE titles(
title_id varchar(20) primary key not null,
title varchar(50))

SELECT * from titles

CREATE TABLE employees(
emp_no integer PRIMARY KEY NOT NULL,
emp_title_id varchar(20),
birth_date date,
first_name varchar(50),
last_name varchar(50),
sex char(1),
hire_date date,
foreign key (emp_title_id) references titles(title_id))

SELECT * from employees

CREATE TABLE dept_emp(
emp_no integer,
dept_no VARCHAR(10),
PRIMARY KEY (emp_no, dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
foreign key (dept_no) references departments(dept_no))

SELECT * from dept_emp

CREATE TABLE dept_manager(
dept_no VARCHAR(10),
emp_no integer,
PRIMARY KEY (dept_no, emp_no),
FOREIGN KEY (dept_no) references departments(dept_no),
foreign key (emp_no) references employees(emp_no))

SELECT * from dept_manager

CREATE TABLE salaries(
emp_no integer primary key not null,
salary integer,
foreign key (emp_no) references employees(emp_no))

select * from salaries

