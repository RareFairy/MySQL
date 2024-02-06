select *
from dept_emp;

select 
	emp_no, 
    max(from_date) as from_date,
	max(to_date) as to_date,
    count(emp_no) as num
from dept_emp
group by emp_no
having num > 1;

create or replace view v_dept_emp_latest_date as
select 
	emp_no, 
    max(from_date) as from_date,
	max(to_date) as to_date
from dept_emp
group by emp_no;

create or replace view v_manager_avg_salary  as
select round(avg(salary), 2)
from salaries s
join dept_manager dm on s.emp_no = dm.emp_no;