select salary, count(emp_no) as emps_with_same_salary
from salaries
where salary > 80000
group by salary
order by salary;