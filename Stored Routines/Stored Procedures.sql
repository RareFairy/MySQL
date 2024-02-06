use employees;

drop procedure if exists select_employees;

delimiter $$
create procedure select_employees()
begin
	select *
    from employees
    limit 1000;
end$$
delimiter ;

call employees.select_employees();

call select_employees();

drop procedure if exists avg_salary;

delimiter $$
create procedure avg_salary()
begin
	select avg(salary)
    from salaries;
end$$
delimiter ;

CALL avg_salary();