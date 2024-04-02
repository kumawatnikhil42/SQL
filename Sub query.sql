use sakila;

-- joins with group by'
select * from actor;
select * from film_actor;

select act.actor_id,act.first_name,fil.film_id from actor as act join film_actor as fil
where act.actor_id = fil.actor_id;

select act.actor_id,count(fil.film_id) as total from actor as act join film_actor as fil
where act.actor_id = fil.actor_id
group by act.actor_id
having total>20;

-- sub query/nested query
-- a query within a query
-- () first this query execute
select customer_id,payment_id,amount from payment
where amount>(select amount from payment where payment_id=1);

select amount from payment where rental_id = 573;

select payment_id,customer_id,rental_id,amount,month(payment_date) from payment
where amount=(select amount from payment where rental_id = 573);

select first_name from actor where actor_id=2;

select actor_id,first_name,last_name from actor
where first_name=(select first_name from actor where actor_id=2);




 
