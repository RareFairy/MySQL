select round(avg(salary))
from salaries;

select round(avg(salary), 2)
from salaries;

select round(avg(salary), 2)
from salaries
where from_date > '1997-01-01';