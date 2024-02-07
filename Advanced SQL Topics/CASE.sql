select 
	emp_no,
    first_name,
    last_name,
    case
		when gender = 'M' then 'Male'
        else 'Female'
	end as gender
from employees;

select 
	emp_no,
    first_name,
    last_name,
    case gender
		when 'M' then 'Male'
        else 'Female'
	end as gender
from employees;

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
	emp_no,
    first_name,
    last_name,
    if (gender = 'M', 'Male', 'Female') as gender
from employees;

select 
	dm.emp_no,
    e.first_name,
    e.last_name,
    max(s.salary) - min(s.salary) as salary_difference,
    case 
		when max(s.salary) - min(s.salary) > 30000 then 'Salary was raised by more than $30,000'
        when max(s.salary) - min(s.salary) between 20000 and 30000 then 'Salary was raised by more than $20,000 and less than $30,000'
        else 'Salary was raised by less than $20,000'
	end as salary_increase
from dept_manager dm
	join employees e on e.emp_no = dm.emp_no
	join salaries s on s.emp_no = dm.emp_no
group by s.emp_no;