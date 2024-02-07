delimiter $$
create function f_emp_avg_salary (p_emp_no integer) returns decimal(10, 2)
deterministic no sql reads sql data
begin
	declare v_avg_salary decimal(10, 2);
    
	select avg(s.salary)
    into v_avg_salary
    from employees e
    join salaries s on e.emp_no = s.emp_no
    where e.emp_no = p_emp_no;
    
    return v_avg_salary;
end$$

delimiter ;

select f_emp_avg_salary(11300);

delimiter $$
create function f_emp_info (p_first_name varchar(255), p_last_name varchar(255)) returns decimal(10, 2)
deterministic
begin
	declare v_max_from_date date;
	declare v_salary decimal(10, 2);
    
	select max(from_date)
    into v_max_from_date
    from employees e
    join salaries s on e.emp_no = s.emp_no
    where e.first_name = p_first_name and e.last_name = p_last_name;
    
	select s.salary
    into v_salary 
    from employees e
    join salaries s on e.emp_no = s.emp_no
    where e.first_name = p_first_name and e.last_name = p_last_name and s.from_date = v_max_from_date;
    
    return v_salary;
end$$

delimiter ;

select f_emp_info('Aruna', 'Journel');