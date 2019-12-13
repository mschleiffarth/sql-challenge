-- number 1
select employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
from employees
join salaries on salaries.emp_no = employees.emp_no


-- number 2
select first_name, last_name
from employees
where hire_date like '1986%'


-- number 3
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_emp.from_date, dept_emp.to_date 
from departments
join dept_manager on departments.dept_no = dept_manager.dept_no
join employees on employees.emp_no = dept_manager.emp_no
join dept_emp on employees.emp_no = dept_emp.emp_no


-- number 4
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp on dept_emp.emp_no = employees.emp_no
join departments on dept_emp.dept_no = departments.dept_no


-- number 5
select employees.emp_no, employees.last_name, employees.first_name
from employees
where employees.first_name = 'Hercules' and employees.last_name like 'B%'


-- number 6
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp on dept_emp.emp_no = employees.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales'


-- number 7
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp on dept_emp.emp_no = employees.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development'


-- number 8
select (employees.last_name), count(employees.last_name)
from employees
group by employees.last_name
order by employees.last_name desc








