select 
	e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date, 
    d.dept_name
from departments d
join dept_manager m on d.dept_no = m.dept_no
join employees e on m.emp_no = e.emp_no;

select 
	e.first_name,
    e.last_name,
    e.hire_date,
    t.title,
    m.from_date,
    d.dept_name
from employees e
join dept_manager m on e.emp_no = m.emp_no
join departments d ON m.dept_no = d.dept_no
join titles t on e.emp_no = t.emp_no
where t.title = 'Manager'
order by e.emp_no;