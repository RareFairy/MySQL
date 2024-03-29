create table sales  
(  
	purchase_number int auto_increment,  
	date_of_purchase date,  
	customer_id int,  
	item_code varchar(10),
primary key (purchase_number),
foreign key (customer_id) references customers(customer_id) on delete cascade
);

drop table sales;

create table sales  
(  
	purchase_number int auto_increment,  
	date_of_purchase date,  
	customer_id int,  
	item_code varchar(10),
primary key (purchase_number)
);

drop table sales;

create table sales  
(  
	purchase_number int auto_increment, 
	date_of_purchase date,  
	customer_id int,  
	item_code varchar(10),
primary key (purchase_number)
);

alter table sales
add foreign key (customer_id) references customers(customer_id) on delete cascade;

alter table sales
drop foreign key sales_ibfk_1;

drop table sales;
drop table customers;
drop table items;
drop table companies;
