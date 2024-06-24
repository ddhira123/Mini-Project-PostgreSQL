create or replace procedure create_oder(f_products_id int[], f_quantity int[], f_customer_id int)
	language plpgsql
as $$
declare
	f_order_id int;
	f_address_id int;
	
	rec record;
	
	order_items cursor for
	select unnest(f_products_id) as product_id, unnest(f_quantity) as quantity;
begin
	select ca.address_id 
	from customers c
	join customers_address ca on c.customer_id = ca.customer_id
	where c.customer_id = f_customer_id and ca.isMainAddress = true 
	into f_address_id;
	
	insert into orders(order_date, customer_id, address_id) 
	values(now()::timestamp, f_customer_id, f_address_id) returning order_id into f_order_id;

	OPEN order_items;
	
	LOOP
		FETCH NEXT FROM order_items into rec;
		EXIT WHEN NOT FOUND;
		
		insert into orders_items values(f_order_id, rec.product_id, rec.quantity);
	END LOOP;
	
	CLOSE order_items;
end; $$;

-- Execute this to test.
-- call create_oder(array[1,2], array[1,1], 10);