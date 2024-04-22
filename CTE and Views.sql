-- CTE == common table expression

use regex2;

select id,dept,salary,dense_rank() over(order by salary desc) from employees;

select * from
(select id,dept,salary,
rank() over(partition by dept order by salary desc) as "rank" from employees) as x 
where 'rank'=1;

select salary from employees order by salary desc;

select max(salary) from employees
where salary<all(select max(salary) from employees);

with rank_select as(
select id,dept,salary,
rank() over( order by salary desc) as "rank" from employees )
select * from rank_select;

select id,dept,salary,
dense_rank() over(order by salary desc) as "RD" from employees;

with highest as(
select id,dept,salary,
dense_rank() over(order by salary desc) as "RD" from employees )
select * from highest where RD=4;


with highest(eid,x) as(
select id,
dense_rank() over(order by salary desc) as "RD" from employees )
select * from highest where x=4;

-- cte for expressions

-- Views  == stored query
 create view emp_view as select id,dept from employees;
 
 select * from emp_view;
  
  use sakila;
  
select * from actor;
select * from film_actor;

create view fa_id as select first_name ,film_id from actor as a join film_actor as f
where (a.actor_id=f.actor_id);

select * from fa_id;

use regex2;

-- simple view == we can change the values in simple view 
-- complex view == group by,join, aggregate func. == we cannot change the values in complex view
create view xyz as 
select dept ,count(*) from employees
group by dept;

select * from xyz;

insert into emp_view values(99,"hr");
insert into xyz values("hr",12);
select * from employees;






