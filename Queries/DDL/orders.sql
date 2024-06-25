CREATE TABLE orders(
	order_id serial primary key, 
	order_date timestamp, 
	order_status varchar(25) DEFAULT 'Pending', 
	finish_date timestamp,
	customer_id int references customers(customer_id)
    address_id int references address(address_id)
);