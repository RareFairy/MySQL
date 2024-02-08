select 
	emp_no,
    first_name,
    last_name,
    row_number() over w as row_num
from employees
window w as (partition by first_name order by emp_no);