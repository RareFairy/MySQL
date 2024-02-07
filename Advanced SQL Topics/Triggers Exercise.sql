delimiter $$

create trigger trig_hire_date
before insert on employees
for each row
begin 
	if new.hire_date > date_format(sysdate(), '%y-%m-%d') then 
		set new.hire_date = date_format(sysdate(), '%y-%m-%d');
    end if;
end $$

delimiter ;

select *
from employees
order by emp_no desc;

insert employees 
values ('999904', '1970-01-31', 'John', 'Johnson', 'M', '2025-01-01');  