-- employee data table
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees e
left join salaries s
on e.emp_no = s.emp_no;

-- employees hired in 1986
select * from employees
where hire_date >= '1986-01-01' AND
hire_date <= '1986-12-31';

-- manager of each department
select d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, de.from_date, de.to_date
from departments d 
left join dept_manager m
on d.dept_no = m.dept_no
left join employees e
on m.emp_no = e.emp_no
left join dept_emp de
on m.emp_no = de.emp_no;

-- employees by department
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
left join dept_emp de
on e.emp_no = de.emp_no
left join departments d
on d.dept_no = de.dept_no;

-- employees with first name "Hercules" last name begins with "B"
select * from employees
where first_name = 'Hercules' AND
last_name like 'B%';

-- employees in Sales Department
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
left join dept_emp de
on e.emp_no = de.emp_no
left join departments d
on d.dept_no = de.dept_no
where dept_name = 'Sales';

-- count by last names
select count(emp_no), last_name
from employees 
group by last_name
order by count desc;



