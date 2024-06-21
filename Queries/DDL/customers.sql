CREATE TABLE customers(
	customer_id serial primary key, 
	first_name varchar(40), 
	last_name varchar(40)),
	address_id int references address(address_id);