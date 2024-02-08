select 
	emp_no, 
	salary, 
	row_number() over(partition by emp_no order by salary desc) as row_num
from salaries;

select 
	a.emp_no,
    max(salary) as max_salary 
from (
	select
		emp_no, 
		salary, 
		row_number() over w as row_num
	from salaries
    window w as (partition by emp_no order by salary desc)) a
group by emp_no;

select 
	a.emp_no,
    max(salary) as max_salary 
from (
	select
		emp_no, 
		salary, 
		row_number() over(partition by emp_no order by salary desc) as row_num
	from salaries) a
group by emp_no;

select 
	a.emp_no,
    max(salary) as max_salary 
from (
	select
		emp_no, 
		salary
	from salaries) a
group by emp_no;

select 
	a.emp_no,
    a.salary as max_salary 
from (
	select
		emp_no, 
		salary,
		row_number() over w as row_num
	from salaries
    window w as (partition by emp_no order by salary desc)) a
where a.row_num = 1;

select 
	a.emp_no,
	min(salary) as min_salary 
from (
	select
		emp_no, 
		salary, 
		row_number() over w as row_num
	from salaries
    window w as (partition by emp_no order by salary desc)) a
group by emp_no;

select 
	a.emp_no,
    min(salary) as min_salary 
from (
	select
		emp_no, 
		salary, 
		row_number() over(partition by emp_no order by salary desc) as row_num
	from salaries) a
group by emp_no;

select 
	a.emp_no,
    min(salary) as min_salary 
from (
	select
		emp_no, 
		salary
	from salaries) a
group by emp_no;

select 
	a.emp_no,
    a.salary as min_salary 
from (
	select
		emp_no, 
		salary,
		row_number() over w as row_num
	from salaries
    window w as (partition by emp_no order by salary asc)) a
group by emp_no;

select 
	a.emp_no,
    a.salary as max_salary 
from (
	select
		emp_no, 
		salary,
		row_number() over w as row_num
	from salaries
    window w as (partition by emp_no order by salary desc)) a
where a.row_num = 1;