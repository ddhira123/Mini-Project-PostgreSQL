CREATE TABLE products(
	product_id serial primary key, 
	name varchar(40), 
	description varchar(255),
	price decimal,
	product_image_link varchar(500),
	stock int, 
	category_id int references categories(category_id));