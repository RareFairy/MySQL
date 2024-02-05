select * 
from dept_manager_dup
order by dept_no;

select * 
from departments_dup
order by dept_no;

select m.dept_no, m.emp_no, d.dept_name
from dept_manager_dup m
inner join departments_dup d on m.dept_no = d.dept_no
order by m.dept_no;

select e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
from employees e
join dept_manager dm on e.emp_no = dm.emp_no;