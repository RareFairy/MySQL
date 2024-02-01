select *
from departments
limit 10;

create table departments_dup (
	dept_no char(4) not null,
    dept_name varchar(40) not null
);

select *
from departments_dup;

insert into departments_dup (
	dept_no,
    dept_name
)
select *
from departments;

insert into departments 
values (
	'd010',
    'Business Analyst'
);