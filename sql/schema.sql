CREATE DATABASE IF NOT EXISTS company_dba;

USE company_dba;

CREATE TABLE departments(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);

CREATE TABLE employees(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
dept_id INT,
salary INT,
hire_date INT,
FOREIGN KEY(dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE performance_log(
log_id INT PRIMARY KEY,
query_run VARCHAR(100),
execution_time float,
run_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

