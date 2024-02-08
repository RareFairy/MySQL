select distinct
	emp_no,
    salary, 
    row_number() over w as row_num
from salaries
where emp_no = 10001
window w as (partition by emp_no order by salary desc);

select 
	emp_no,
    (count(salary) - count(distinct salary)) as diff
from salaries
group by emp_no
having diff > 0
order by emp_no;

select *
from salaries
where emp_no = 11839;

select 
	emp_no,
    salary, 
    row_number() over w as row_num
from salaries
where emp_no = 11839
window w as (partition by emp_no order by salary desc);

select 
	emp_no,
    salary, 
    rank() over w as rank_num
from salaries
where emp_no = 11839
window w as (partition by emp_no order by salary desc);

select 
	emp_no,
    salary, 
    dense_rank() over w as rank_num
from salaries
where emp_no = 11839
window w as (partition by emp_no order by salary desc);

select 
	emp_no,
    salary, 
    ROW_NUMBER() over w as rank_num
from salaries
where emp_no = 10560 
window w as (partition by emp_no order by salary desc);

select
    dm.emp_no, 
    (COUNT(salary)) AS no_of_salary_contracts
from dept_manager dm
join salaries s on dm.emp_no = s.emp_no
group by emp_no
order by emp_no;

select 
	emp_no,
    salary, 
    rank() over w as rank_num
from salaries
where emp_no = 10560 
window w as (partition by emp_no order by salary desc);

select 
	emp_no,
    salary, 
    dense_rank() over w as rank_num
from salaries
where emp_no = 10560 
window w as (partition by emp_no order by salary desc);