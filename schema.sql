--build tables and import csv
create table departments (
dept_no text,
dept_name varchar);
create table dept_emp (
emp_no int,
dept_no text,
from_date date,
to_date date);
create table dept_manager (
dept_no text,
emp_no int,
from_date date,
to_date date);
create table employees (
emp_no int,
birth_date date,
first_name varchar,
last_name varchar,
gender varchar,	
hire_date date);
create table salaries (
emp_no int,
salary int,
from_date date,
to_date date);
create table titles (
emp_no int,
title varchar,
from_date date,
to_date date);

-- view tables
select * from departments;
select * from employees;