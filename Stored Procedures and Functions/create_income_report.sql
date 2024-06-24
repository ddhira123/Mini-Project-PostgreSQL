create or replace function create_income_report()
	returns table(year text,
				  month text,
				  total_income numeric
				 )
	language plpgsql
as $$
begin
	return query 
	select to_char(o.finish_date, 'YYYY') as year, to_char(o.finish_date, 'MM') as month, sum(p.price * oi.quantity) as total_income
	from orders o
	join orders_items oi on o.order_id = oi.order_id
	join products p on oi.product_id = p.product_id
	where o.order_status = 'Completed' 
	group by year, month;
end; $$;

-- Test
-- select * from sell_items();
