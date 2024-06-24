create or replace function get_total_trx_per_customer()
	returns table(customer_id int,
				  first_name varchar(40),
				  last_name varchar(40),
				  total_transaction numeric
				 )
	language plpgsql
as $$
begin
	return query 
        with customer_transaction as (
            select c.customer_id, c.first_name, c.last_name, o.order_id, p.price * oi.quantity as totalprice
            from customers c
            join orders o on c.customer_id = o.customer_id
            join orders_items oi on o.order_id = oi.order_id
            join products p on oi.product_id = p.product_id
            where o.order_status = 'Completed'
        ), customer_total_transaction as (
            select customer_id, first_name, last_name, sum(totalprice) as total_transaction
            from customer_transaction
            group by customer_id, first_name, last_name
            order by total_transaction desc
        ) select * from customer_total_transaction;
end; $$;

