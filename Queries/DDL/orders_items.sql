CREATE TABLE orders_items(
    orders_items_id serial primary key,
	order_id int references orders(order_id), 
	product_id int references products(product_id), 
	quantity int);