select first_name, count(first_name) as names_count
from employees
where hire_date > '1999-01-01'
group by first_name
having count(first_name) < 200
order by first_name desc;

select emp_no
from dept_emp
where from_date > '2000-01-01'
group by emp_no
having count(from_date) > 1
order by emp_no;