select 
	emp_no, 
	salary, 
	row_number() over(partition by emp_no order by salary desc) as row_num
from salaries;

select 
	emp_no, 
	dept_no, 
	row_number() over(order by emp_no) as row_num
from dept_manager;

select 
	emp_no, 
	first_name, 
    last_name, 
    row_number() over(partition by first_name order by last_name) as row_num
from employees;