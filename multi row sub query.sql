create database april;
use april;

create table salary(id int, amount int);

insert into salary values(1,10),(2,30),(3,40),(4,9),(5,200),(6,600),(7,66);

select * from salary;

select amount from salary where id=3; 
select * from salary where amount>(select amount from salary where id=3);

select avg(amount) from salary;

select id, amount, (select avg(amount) from salary) as avg from salary;



-- multi row sub query
-- in , any , all
-- in => =any exactly matches 
select id,amount from salary
where amount in (select amount from salary where id=2 or id=3);

select id,amount from salary
where amount =any(select amount from salary where id=2 or id=3);

-- >any greater than the minimum value of result set
select id,amount from salary
where amount >any(select amount from salary where id=2 or id=3);

select id,amount from salary
where amount >=any(select amount from salary where id=2 or id=3 or id=1);

-- >all more than the maximum value of result set
select id,amount from salary
where amount >all(select amount from salary where id=2 or id=3);

select id,amount from salary
where amount >=all(select amount from salary where id=2 or id=3);

-- scaler functions = single row function
-- aggregate function = multi row function

select max(amount) from salary 
where amount>(select amount from salary where id=2);


-- to finout the second highest  common interview question
select amount from salary 
where amount>(select amount from salary where id=2)
order by amount desc
limit 1,1;

select max(amount) as secondmax from salary
where amount<(select max(amount) from salary where amount>(select amount from salary where id=2));

select min(amount) as secondmin from salary
where amount<(select min(amount) from salary where amount>(select amount from salary where id=2));





