select 
	s.emp_no, 
	s.salary, 
    dm.dept_no,
   	row_number() over(partition by s.emp_no order by s.salary asc) as row_num,
	row_number() over(partition by s.emp_no order by s.salary desc) as row_num_manager
from salaries s
join dept_manager dm on dm.emp_no = s.emp_no;

select 
	s.emp_no, 
	s.salary, 
    dm.dept_no,
   	row_number() over() as row_num1,
	row_number() over(partition by s.emp_no order by s.salary desc) as row_num2
from salaries s
join dept_manager dm on dm.emp_no = s.emp_no
order by row_num1, emp_no, salary asc;