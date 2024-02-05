# Join
select m.dept_no, m.emp_no, d.dept_name
from dept_manager_dup m
inner join departments_dup d on m.dept_no = d.dept_no
order by dept_no;

# Where
select m.dept_no, m.emp_no, d.dept_name
from dept_manager_dup m, departments_dup d
where m.dept_no = d.dept_no
order by dept_no;

select e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
from employees e, dept_manager_dup dm
where e.emp_no = dm.emp_no
order by emp_no;

