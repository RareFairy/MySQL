select *
from departments_dup
order by dept_no;

commit;

update departments_dup
set
	dept_no = 'd011',
    dept_name = 'Quality Control';
    
rollback;

commit;

select *
from departments
order by dept_no;

update departments
set dept_name = 'Data Analysis'
where dept_no = 'd010';
