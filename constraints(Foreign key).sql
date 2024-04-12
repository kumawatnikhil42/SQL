-- constraints

-- foreign key = it is a column which make relationship to other table.

use april10;

create table test1(pid int primary key, pname varchar(20), amount int); 

create table orders(oid int , city varchar(50), product_id int,
constraint april10_orders_pk_oid primary key(oid),
constraint april10_orders_fk_product_id foreign key(product_id) references test1(pid));

desc test1;
desc orders;

-- firstly  parent table
insert into test1 values(10,"abc",600);
select * from test1;

-- secondly  child table
insert  into orders values (1,"xyz",10);

-- auto_increment
create table gender(id int primary key auto_increment, gender varchar(6));
insert into gender(gender) values("F");

select * from gender;

-- single record delete
delete from gender where id=1;
 
-- all delete is dml
-- delete from gender;

-- drop table is ddl and it is faster than delete

-- truncate is ddl function drop table and then recreate structure(table) again.




