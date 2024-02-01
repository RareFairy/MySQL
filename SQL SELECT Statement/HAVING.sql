select emp_no, avg(salary)
from salaries
group by emp_no
having avg(salary) > 120000
order by emp_no;