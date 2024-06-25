CREATE TABLE address(
	address_id serial primary key, 
	address1 varchar(60), 
	address2 varchar(60),
	city_id int references city(city_id),
	postal_code varchar(10));