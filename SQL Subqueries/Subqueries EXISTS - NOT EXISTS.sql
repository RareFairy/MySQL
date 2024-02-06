select e.first_name, e.last_name
from employees e
where exists (
	select *
    from dept_manager dm
    where dm.emp_no = e.emp_no);

select e.first_name, e.last_name
from employees e
where exists (
	select *
    from dept_manager dm
    where dm.emp_no = e.emp_no)
order by emp_no;

select *
from employees;

select title, count(title)
from titles
group by title;

select *
from employees e
where exists (
	select *
    from titles t
    where t.emp_no = e.emp_no and t.title = 'Assistant Engineer')
order by emp_no;