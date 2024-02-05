select dm.*, d.*
from dept_manager dm
cross join departments d
order by dm.emp_no, d.dept_no;

select dm.*, d.*
from dept_manager dm, departments d
order by dm.emp_no, d.dept_no;

select dm.*, d.*
from dept_manager dm
join departments d
order by dm.emp_no, d.dept_no;

select dm.*, d.*
from departments d
cross join dept_manager dm
where d.dept_no <> dm.dept_no
order by dm.emp_no, d.dept_no;

select e.*, d.*
from departments d
cross join dept_manager dm
join employees e on dm.emp_no = e.emp_no
where d.dept_no <> dm.dept_no
order by dm.emp_no, d.dept_no;

select *
from employees;

select *
from departments;

select dm.*, d.*
from departments d
cross join dept_manager dm
where d.dept_no = 'd009'
order by d.dept_no;

select e.*, d.*
from employees e
cross join departments d
where e.emp_no < 10011
order by e.emp_no, d.dept_name;