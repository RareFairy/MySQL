create table customers (
	customer_id int auto_increment,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int,
primary key (customer_id)
);

alter table customers
add column gender enum('M', 'F') after last_name;

insert into customers (first_name, last_name, gender, email_address, number_of_complaints)
values ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);

alter table customers
change column number_of_complaints number_of_complaints int default 0; 

insert into customers (first_name, last_name, gender)
values ('Peter', 'Figaro', 'M');

select * from customers;

alter table customers
alter column number_of_complaints drop default;

create table companies (
	company_id varchar(255),
    company_name varchar(255) default 'X',
    headquaters_phone_number varchar(255),
primary key (company_id),
unique key (headquaters_phone_number)
);

drop table companies;