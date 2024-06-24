create or replace function get_total_product_qty_sales()
	returns table(product_id int,
				  name varchar(40),
				  total_sell bigint
				 )
	language plpgsql
as $$
begin
	return query 
	select p.product_id, p.name, sum(oi.quantity) as total_sell
	from orders o
	join orders_items oi on o.order_id = oi.order_id
	join products p on oi.product_id = p.product_id
	where o.order_status = 'Completed' 
	group by p.product_id
	order by total_sell desc;
end; $$;

-- Test
-- select * from get_total_product_qty_sales();