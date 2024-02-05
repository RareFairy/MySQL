-- create employees_dup
drop table if exists employees_dup;
create table employees_dup (
	emp_no int(11),
    birth_date date,
    first_name varchar(14),
    last_name varchar(16),
    gender enum('M', 'F'),
    hire_date date
);

-- duplicate the structure of the 'employees' table
insert into employees_dup
select e.*
from employees e
limit 20;

-- check
select *
from employees_dup;

-- insert a duplicate of the first row
insert into employees_dup
values ('10001', '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26');

-- check
select *
from employees_dup;

-- UNION vs UNION ALL
select 
	e.emp_no, 
    e.first_name, 
    e.last_name, 
    null as dept_no, 
    null as from_date
from employees_dup e
where e.emp_no = 10001
union all select
	null as emp_no,
    null as first_name, 
    null as last_name, 
    m.dept_no, 
    m.from_date
from dept_manager m;

select 
	e.emp_no, 
    e.first_name, 
    e.last_name, 
    null as dept_no, 
    null as from_date
from employees_dup e
where e.emp_no = 10001
union select
	null as emp_no,
    null as first_name, 
    null as last_name, 
    m.dept_no, 
    m.from_date
from dept_manager m;

select *
from
    (select
        e.emp_no,
		e.first_name,
		e.last_name,
		null as dept_no,
		null as from_date
    from employees e
    where last_name = 'Denis' 
    union select
        null as emp_no,
		null as first_name,
		null aslast_name,
		dm.dept_no,
		dm.from_date
    from dept_manager dm) as a
order by a.emp_no asc;