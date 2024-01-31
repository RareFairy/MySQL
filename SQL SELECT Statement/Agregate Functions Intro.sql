select count(emp_no)
from employees;

select count(distinct first_name)
from employees;

select count(*) 
from salaries
where  salary >= 100000;

select count(*)
from dept_manager;