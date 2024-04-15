-- Tcl
create database nikhil;

use nikhil;

create table emp(id int , name varchar(20));

insert into emp values(1,"aman");

-- if database save permanently and if 0 not save
select @@autocommit;
set autocommit=0;
insert into emp values(2,"akshay");
select * from emp;

-- rollback,commit,savepoint

commit;  -- it saves the pending transaction in your database permanently.

-- agar aap ne koi bhi dml operation chalya iska mtlb hai apne uss transaction ko start kiya hai
-- end if you start ddl,tcl,dcl without commit

-- rollback  (undo)  pending transaction in previous state
insert into emp values(3,"tiger");

rollback;

select * from emp;

insert into emp values(4,"joker");
select * from emp;

-- it auto save when use ddl,tcl,dcl statement
create table aman(id int);

rollback;

select * from emp;

-- alternate of set @@autocommit=0

set @@autocommit=1;
start transaction; -- in this the value of autocommit is remain same but transaction is save
select @@autocommit;
insert into emp values(5,"abc");
insert into emp values(6,"abcdef");
savepoint emp_sp_happy;
update emp set name="cbvdg" where id="1";

rollback to emp_sp_happy;

select * from emp;



