select *
from departments_dup
order by dept_no;

select dept_no, ifnull(dept_name, 'Department name not provided') as dep_name
from departments_dup;

