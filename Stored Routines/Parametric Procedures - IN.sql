use employees;
drop procedure if exists emp_salary;

delimiter $$
use employees $$
create procedure emp_salary(in p_emp_no integer)
begin
	select e.first_name, e.last_name, s.salary, s.from_date, s.to_date
    from employees e
    join salaries s on e.emp_no = s.emp_no
    where e.emp_no = p_emp_no;
end$$

delimiter ;

call emp_salary(11300);

drop procedure if exists emp_avg_salary;
delimiter $$
use employees $$
create procedure emp_avg_salary(in p_emp_no integer)
begin
	select e.first_name, e.last_name, avg(s.salary)
    from employees e
    join salaries s on e.emp_no = s.emp_no
    where e.emp_no = p_emp_no
	group by e.emp_no, e.first_name, e.last_name;
end$$

delimiter ;

call employees.emp_avg_salary(11300);
