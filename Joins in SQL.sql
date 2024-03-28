use sakila;

show tables;

create table product(pid int, pname varchar(20));
insert into product values(1,"tv"),(2,"mobile"),(3,"abc");

create table orders(oid int, amount int, pid int);
insert into orders values(1,100,1),(2,200,3),(3,500,1);

select * from product;
select * from orders;

-- cross join  (m x n)
select oid,amount,orders.pid,pname from orders join product;


select oid,amount,orders.pid,pname from orders join product
where (orders.pid=product.pid);

-- using when both has common column inner join
select oid,amount,orders.pid,pname from orders join product
using (pid);


