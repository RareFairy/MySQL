select * 
from departments_dup;

alter table departments_dup
drop column dept_manager;

alter table departments_dup
change column dept_no dept_no char(4) null;

alter table departments_dup
change column dept_name dept_name varchar(40) null;

insert into departments_dup (dept_name)
values ('Public Relations');

drop table if exists dept_manager_dub;

create table dept_manager_dup (
	emp_no int (11) not null,
    dept_no char(4) null,
    from_date date not null,
    to_date date null
);

insert into dept_manager_dup
select *
from dept_manager;

insert into dept_manager_dup(emp_no, from_date)
values
	(999904, '2017-01-01'),
	(999905, '2017-01-01'),
	(999906, '2017-01-01'),
	(999907, '2017-01-01');
    
delete from dept_manager_dup
where dept_no = 'd001';

select *
from dept_manager_dup;