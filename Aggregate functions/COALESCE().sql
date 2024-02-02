select dept_no, coalesce(dept_name, 'Department name not provided') as dep_name
from departments_dup;

select *
from departments_dup
order by dept_no;

select dept_no, dept_name, coalesce(dept_manager, dept_name, 'N/A') as dept_manager
from departments_dup
order by dept_no desc;

select dept_no, dept_name, coalesce('department manager name') as fake_col
from departments_dup;

select dept_no, dept_name, coalesce(dept_no, dept_name) as dept_info
from departments_dup
order by dept_no desc;

select 
	ifnull(dept_no, 'N/A') as dept_no, 
    ifnull(dept_name, 'Department name not provided') as dept_name,
    coalesce(dept_no, dept_name) as dept_info
from departments_dup
order by dept_no asc;