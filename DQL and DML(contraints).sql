-- DDL = Data Definition Language
-- create,alter,drop,truncate

-- if database already exist then it skip it. 
create database if not exists april10;
use april10;

-- create table
create table employee(id int,fname varchar(20));
desc employee; -- describe

select * from employee;

-- DML = Data Manipulation Language
-- insert,update,delete
insert into employee(id,fname) values(1,"abc");
select * from employee;

insert into employee values(2,"def");

insert into employee(id,fname) values(3,null);

-- by default null if put value put in single column
insert into employee(fname) values("tushar");

-- for delete
drop table employee;

-- constraints are set of rules for restrict to insert unwanted values and data

-- not null
create table if not exists xyz(id int not null, name varchar(20));

insert into xyz(id,name) values(1,"abc");

select * from xyz;

insert into xyz(id,name) values(2,null);

insert into xyz(id,name) values(null,"def");

-- default
create table if not exists xyz1(id int not null  , name varchar(20) default "regex");

insert into xyz1(id) values(1);
select * from xyz1;


drop table xyz, xyz1;
-- unique
-- it can hold unique value and null value
create table yash(id int,email varchar(20) default "abc@gmail.com" unique);

insert into yash(id,email) values(1,"aman@gamil.com");
insert into yash(id,email) values(2,"nikhil@gmail.com");
insert into yash(id,email) values(3,null);
insert into yash(id,email) values(4,null);

select * from yash;

-- check 
create table house(id int, amount int check (amount>1000));

insert into house(id,amount) values(1,1000);
insert into house(id,amount) values(1,1002);


create table student(id int not null, name varchar(20), email varchar(20) unique, address varchar(20) 
unique, gender varchar(6) check (gender="Male" or gender="Female"));

insert into student(id,name,email,address,gender) values(1,"Ankush","ankush@gmail","gopalpura","Male");

insert into student(id,name,email,address,gender) values(1,"Ankush","ankush@gmail","gopalpura","other");

insert into student(id,name,email,address,gender) values(1,"Ankush","ankush@gmail","gopalpura","Male");

select * from student;

-- primary key = it is use for unique and not null value in column for select particular data    (unique identifier)

create table student1(id int primary key, name varchar(20) , email varchar(20) unique);

insert into student1(id,name,email) values(1,"tushar","tushar@gmail.com");
insert into student1(id,name,email) values(1,"tushar2","tushar2@gmail.com");

select * from student1;





 





