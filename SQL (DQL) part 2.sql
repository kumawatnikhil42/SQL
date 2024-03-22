use sakila;
select actor_id as "id" from actor;

select * from payment
order by customer_id,amount desc,rental_id desc;

select count(distinct(customer_id)) from payment;

SELECT 
    customer_id, COUNT(customer_id)
FROM
    payment
GROUP BY customer_id;

-- first where is execute then group by
select customer_id,count(customer_id) from payment
where customer_id between 1 and 5
group by customer_id ;

-- never apply where clause on data which is not exist in a table
-- use having clasue instead of where clause use on aggregate functions 
select customer_id,count(customer_id) from payment
group by customer_id having count(customer_id)>30;

select customer_id,sum(amount) as "Total Amount" from payment
group by customer_id 
having  sum(amount)>120;

select staff_id,avg(amount) as "Avg. Amount" from payment
group by staff_id 
having  avg(amount)>2;












