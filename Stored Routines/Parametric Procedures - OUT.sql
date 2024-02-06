use employees;
drop procedure if exists emp_avg_salary_out;

delimiter $$
create procedure emp_avg_salary_out(in p_emp_no integer, out p_avg_salary decimal(10, 2))
begin
	select avg(s.salary)
    into p_avg_salary
    from employees e
    join salaries s on e.emp_no = s.emp_no
    where e.emp_no = p_emp_no;
end$$

delimiter ;

drop procedure if exists emp_info;
delimiter $$
create procedure emp_info(in p_first_name varchar(255), p_last_name varchar(255), out p_emp_no int)
begin
	select e.emp_no
    into p_emp_no
    from employees e
    where e.first_name = p_first_name and e.last_name = p_last_name;
end$$

delimiter ;