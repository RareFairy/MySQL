select * 
from employees
where last_name = 'Denis' and (gender = 'M' or gender = 'F');

select * 
from employees
where gender = 'F' and (first_name = 'Kellie' or first_name = 'Aruna');