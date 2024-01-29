create table companies (
	company_id int auto_increment,
    headquaters_phone_number varchar(255),
    company_name varchar(255) not null,
primary key (company_id)
);

alter table companies
modify company_name varchar(255) null;

alter table companies
change column company_name company_name varchar(255) not null;

insert into companies (headquaters_phone_number, company_name)
values ('+1 (202) 555-0196', 'Company A');

select * from companies;

alter table companies
change column headquaters_phone_number headquaters_phone_number varchar(255) null;

alter table companies
modify headquaters_phone_number varchar(255) not null;

use sales;

create table if not exists test (
    numbers int(10),
    words varchar(10)
);

select *
from test;
drop table test;

/*
Comment 1
Comment 2
*/

# Comment 3
-- Comment 4