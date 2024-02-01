insert into employees (
	emp_no,
    birth_date,
    first_name,
    last_name,
    gender,
    hire_date
) values (
	999901,
    '1896-04-21',
    'John',
    'Smith',
    'M',
    '2011-01-01'
);

insert into employees
values (
    999903,
    '1977-09-14',
    'Johnathan',
    'Creek',
    'M',
    '1999-01-01'
);

select *
from titles
limit 10;

insert into titles (
	emp_no,
    title,
    from_date
) values (
	999901,
    'Senior Engineer',
    '1997-11-01'
);

insert into titles (
	emp_no,
    title,
    from_date
) values (
	999903,
    'Senior Engineer',
    '1997-11-01'
);

select *
from titles
order by emp_no desc
limit 10;

select *
from dept_emp
order by emp_no desc
limit 10;

insert into dept_emp
values (
	999903,
    'd005',
    '1997-11-01',
    '9999-01-01'
);