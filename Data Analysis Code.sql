1. create table employee_salary as(
	select "Employees".emp_no,"Employees".first_name, "Employees".last_name, "Employees".sex, "Salaries".salary 
	from "Employees" 
	join "Salaries" 
	on "Employees".emp_no = "Salaries".emp_no);
	select * from employee_salary

2. select first_name, last_name, hire_date from "Employees"
	where hire_date >= '1986-01-01' and hire_date < '1987-01-01'

3. select "Departments".dept_no, "Departments".dept_name, "Employees".emp_no,"Employees".last_name,"Employees".first_name
	from "Dept_manager"
	join "Employees" on "Dept_manager".emp_no = "Employees".emp_no
	join "Departments" on "Departments".dept_no = "Dept_manager".dept_no

4. select "Departments".dept_no,"Dept_emp".emp_no, "Departments".dept_name, "Employees".last_name, "Employees".first_name
	from "Departments"
	join "Dept_emp" on "Departments".dept_no = "Dept_emp".dept_no
	join "Employees" on "Dept_emp".emp_no = "Employees".emp_no
	
5. select first_name, last_name, sex 
	from "Employees"
	where first_name = 'Hercules' and last_name like 'B%'
	
6. select "Employees".first_name, "Employees".last_name, "Employees".emp_no, "Departments".dept_name
	from "Employees" 
	join "Dept_emp" on "Employees".emp_no = "Dept_emp".emp_no
	join "Departments" on "Dept_emp".dept_no = "Departments".dept_no
	where dept_name = 'Sales'
	
7. select "Employees".first_name, "Employees".last_name, "Employees".emp_no, "Departments".dept_name
	from "Employees" 
	join "Dept_emp" on "Employees".emp_no = "Dept_emp".emp_no
	join "Departments" on "Dept_emp".dept_no = "Departments".dept_no
	where "Departments".dept_name in ('Sales', 'Development')

8. select "Employees".last_name, count(last_name)
	from "Employees"
	group by "Employees".last_name
	order by count(last_name) desc