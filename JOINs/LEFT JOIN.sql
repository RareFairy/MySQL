# remove the duplicates from the two tables
delete from dept_manager_dup
where emp_no = '110228';

delete from  departments_dup
where dept_no = 'd009';

# add back the initial records
insert into dept_manager_dup
values ('110228', 'd003', '1992-03-21', '9999-01-01');


insert into departments_dup
values ('d009', 'Customer Service');

# Left Join
select m.dept_no, m.emp_no, d.dept_name
from dept_manager_dup m
left join departments_dup d on m.dept_no = d.dept_no
group by m.dept_no, m.emp_no, d.dept_name
order by m.dept_no;

# Left Join with reversed tables
select d.dept_no, m.emp_no, d.dept_name
from departments_dup d
left join dept_manager_dup m on m.dept_no = d.dept_no
order by d.dept_no;

# Left Join with Where statement
select m.dept_no, m.emp_no, d.dept_name
from dept_manager_dup m
left join departments_dup d on m.dept_no = d.dept_no
where dept_name is null
order by m.dept_no;

select e.emp_no, e.first_name, e.last_name, dm.dept_no, dm.from_date
from employees e
left join dept_manager dm on e.emp_no = dm.emp_no
where last_name = 'Markovitch'
order by dm.dept_no desc, e.emp_no;