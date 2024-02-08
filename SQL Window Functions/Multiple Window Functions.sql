select
	emp_no,
    salary,
    # row_number() over() as row_num1,
	row_number() over(partition by emp_no ) as row_num2,
	row_number() over(partition by emp_no order by salary desc) as row_num3
    # row_number() over(order by salary desc) as row_num4
from salaries;