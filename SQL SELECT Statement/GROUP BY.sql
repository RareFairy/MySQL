select first_name, count(first_name) as names_count
from employees
group by first_name
order by first_name desc;