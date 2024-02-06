drop table if exists emp_manager;
create table emp_manager (
	emp_no int(11) not null,
    dept_no char(4) null,
    manager_no int(11) not null);

insert into emp_manager 
select A.*
from
	(select 
		e.emp_no as employee_ID, 
		min(de.dept_no) as department_code,
		(select emp_no
		from dept_manager
		where emp_no = 110022) as manager_ID
	from employees e
	join dept_emp de on e.emp_no = de.emp_no
	where e.emp_no <= 10020
	group by e.emp_no
	order by e.emp_no) as A
union select B.*
from
	(select 
		e.emp_no as employee_ID, 
		min(de.dept_no) as department_code,
		(select emp_no
		from dept_manager
		where emp_no = 110039) as manager_ID
	from employees e
	join dept_emp de on e.emp_no = de.emp_no
	where e.emp_no > 10020
	group by e.emp_no
	order by e.emp_no
    limit 20) as B
union select C.*
from
	(select 
		e.emp_no as employee_ID, 
		min(de.dept_no) as department_code,
		(select emp_no
		from dept_manager
		where emp_no = 110039 ) as manager_ID
	from employees e
	join dept_emp de on e.emp_no = de.emp_no
	where e.emp_no = 110022
	group by e.emp_no
	order by e.emp_no) as C
union select D.*
from
	(select 
		e.emp_no as employee_ID, 
		min(de.dept_no) as department_code,
		(select emp_no
		from dept_manager
		where emp_no = 110022 ) as manager_ID
	from employees e
	join dept_emp de on e.emp_no = de.emp_no
	where e.emp_no = 110039
	group by e.emp_no
	order by e.emp_no) as D;