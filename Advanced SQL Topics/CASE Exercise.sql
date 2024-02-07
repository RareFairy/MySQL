select 
	e.emp_no,
    e.first_name,
    e.last_name,
    case 
		when dm.emp_no is not null then 'Manager'
        else 'Employee'
	end as is_manager
from employees e
	left join dept_manager dm on dm.emp_no = e.emp_no
where e.emp_no > 109990;

select 
	e.emp_no,
    e.first_name,
    e.last_name,
    case 
		when max(s.salary) - min(s.salary) is not null then 'Salary difference'
		when max(s.salary) - min(s.salary) > 30000 then 'Salary was raised by more than $30,000'
        else 'NOT'
	end as salary_raise  
from dept_manager dm
	join employees e on e.emp_no = dm.emp_no
	join salaries s on s.emp_no = dm.emp_no  
group by s.emp_no;

select 
	e.emp_no,
    e.first_name,
    e.last_name,
    case 
		when de.to_date <> '9999-01-01' then 'Is still employed'
        else 'Not an employee anymore'
	end as current_employee
from employees e
	left join dept_emp de on de.emp_no = e.emp_no
limit 100;