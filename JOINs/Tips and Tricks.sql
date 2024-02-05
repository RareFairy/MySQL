select d.dept_name, avg(salary) as average_salary
from departments d
join dept_manager m on d.dept_no = m.dept_no
join salaries s on m.emp_no = s.emp_no
group by d.dept_name
having average_salary > 60000
order by average_salary desc;

select e.gender, COUNT(dm.emp_no)
from employees e
join dept_manager dm on e.emp_no = dm.emp_no
group by gender;