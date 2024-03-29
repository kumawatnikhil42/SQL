use sakila;

Select * from orders;
select * from product;

-- cross join / cartsian join
select oid,amount,pname from orders join product;

-- inner join
select oid,amount,pname from orders1 join product
where orders1.pid = product.pid;

-- new syntax 
select oid,amount,pname from orders1 inner join product
on orders1.pid = product.pid;

-- using use when tables have same column name
select oid,amount,pname from orders1 join product
using (pid);

-- left join
select oid,amount,pname from orders1 left join product
on orders1.pid = product.pid;

-- right join
select oid,amount,pname from orders1 right join product
on orders1.pid = product.pid;

-- natural join
-- use when columns name are same
select oid,amount,pname from orders1 natural join product;
select * from actor;
select * from film_actor;
select * from film;

select actor.actor_id,concat(first_name," ",last_name) as "full name",film_actor.film_id  from actor join film_actor
where actor.actor_id=film_actor.actor_id;

select actor.actor_id,concat(first_name," ",last_name) as "full name",film_actor.film_id,film.title from actor join film_actor join film
where (actor.actor_id=film_actor.actor_id) and (film_actor.film_id=film.film_id);

-- using table alias
select a.actor_id,concat(first_name," ",last_name) as "full name",fa.film_id,f.title from actor as a join film_actor as fa join film as f
where (a.actor_id=fa.actor_id) and (fa.film_id=f.film_id);

select * from language; 
select f.film_id,f.title,f.release_year,l.name from film as f join language as l
where f.language_id=l.language_id;

create table employee(eid int, name varchar(20), salary int, managerid int);
insert into employee values(1,"Tushar",500,Null),(2,"Aman",100,1),(3,"Abhishek",50,4),(4,"Mayank",25,2);
select * from employee;





