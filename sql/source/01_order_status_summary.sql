--Q1. How many customers are there in each state? Show the top 5 states.
--top5 states. LIMIT 5
--GROUP BY
select count(*) as customers,customer_state from customers 
group by customer_state
order by customers desc 
limit 5
--Q2. How many distinct real customers (customer_unique_id) are there?
select count(distinct customer_unique_id) from customers;
--Q3. Find the most-used payment type and its total payment value.
--How many reviews are there for each review_score (1 to 5)? What is the overall average score?
select payment_type, count(*) as usage_count, sum(payment_value) as total_payment_value
from raw.order_payments
group by payment_type
order by usage_count desc
limit 1;
--q4. Count reviews for each score (1-5) and find the average score.
 
select review_score, count(*) as review_count
from raw.order_reviews
group by review_score
order by review_score;


select avg(review_score) as overall_average_score
from raw.order_reviews;





--Q5.Sellers by state: which states have more than 50 sellers?
select seller_state, count(*) as sellers
from raw.sellers s
group by s.seller_state
having count(*) >= 50;

--Q6.Average price and freight per order item, rounded to 2 decimals

select round(avg(price), 2) as avg_price, round(avg(freight_value), 2) as avg_freight, order_item_id
from raw.order_items
group by order_item_id;