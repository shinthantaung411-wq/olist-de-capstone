--select * from orders limit 10;
--
--select order_id,order_status as status
--from orders limit 10;
--
--select * from orders;
--
--select * from orders 
--where  order_status <> 'canceled';
--
--select distinct order_status as status
--from orders 
--where order_status <>'canceled';
--
--select * from order_items 
--where price between 10 and 50
--
---- order by
--select order_id,product_id,price 
--from prder-items
--order by price desc
--limit 10
--
--select * from customers 
--where customer_city like '%sao';
--
---- aggerate function
--
--select count(*)
--from orders
--
--select count(*),order_status
--from orders 
--group by order_status 
--
---- where and group by
--
--select count(*),customer_state from customers c
--where c.customer_state <>'SP'
--group by customer_state 
--
--
---- item 100 > 100 seller_id
---- seller_id,count(*)>100
--
--select 

select * from raw.orders limit 10;

select order_id,order_status as status
from raw.orders limit 2;

select distinct order_status from raw.orders;

select order_id,order_status as status
from raw.orders 
where order_status = 'delivered'

select distinct order_status as status
from raw.orders
where order_status <>'canceled';

select distinct customer_state from raw.customers

select customer_id,customer_city from raw.customers 
where customer_state in ('SP','SC','MG');

select * from raw.order_items
where price between 20 and 30


 




































































