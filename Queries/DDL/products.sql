CREATE TABLE products(
	product_id serial primary key, 
	name varchar(40), 
	description varchar(255),
	price numeric,
	category_id int references categories(category_id)
);