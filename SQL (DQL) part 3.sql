use sakila;
select customer_id,concat("Total People are ",count(customer_id)) as "Total People",concat("Average Amount ",avg(amount)) as "Average Amount" from payment
group by customer_id;

select customer_id,staff_id,count(staff_id) from payment
group by customer_id,staff_id;

-- Data types in sql
-- numeric,string,date

-- numeric: tinyint,smallint,mediumint,int,bigint
-- signed stores both +ve and -ve int
-- unsigned stores only positive int
create table test3(id int unsigned);
insert into test3 values(122345);
select * from test3;

desc test3;

create table test_bigint(id BIGINT unsigned);
insert into test_bigint values(12131273867687698);
select * from test_bigint;


-- string: char.varchar
-- char is used to store fixed length string char.
create table ep2(name1 char(3));
insert into ep2 values("TU ");
select name1, length(name1) from ep2;

-- varchar(variable character) used to store char. string of variable length but max. of set length specified
-- max. size of varchar is 65535
create table ep3(name1 varchar(3));
insert into ep3 values("TUp   ");
select name1, length(name1) from ep3;


-- datetime: stores big date and time
create table test123( dob datetime);
insert into test123 values("2069-05-13 16:04:25");
select * from test123;

-- timestamp: limit date or time
create table test1234( dob timestamp);
insert into test1234 values("2069-05-13 16:04:25");
select * from test1234;








