select*
from dept_manager;

select*
from employees;

# select the first and last name from the 'employees' table for tje same
# employee numbers that can be found in the 'dept_manager' table
select e.first_name, e.last_name
from employees e
where e.emp_no in (
	select dm.emp_no
    from dept_manager dm);

select *
from dept_manager
where emp_no in (
	select e.emp_no
    from employees e
    where e.hire_date between '1990-01-01' and '1995-01-01');