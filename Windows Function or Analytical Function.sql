-- windows function and analytical function
create database regex2;
use regex2;
drop table if exists employees;
create table employees(id int primary key auto_increment,
dept varchar(20), salary int);

insert into employees(dept, salary) values("hr",200),
("hr",300),("hr",100),
("marketing",70),("marketing",50),
("marketing",200),("marketing",400),
("dsa",150),("dsa",120),
("dsa",40),("dsa",90),("dsa",500),
("hr",200),("hr",200),("hr",50),("marketing",200);

select id,dept,salary,sum(salary) over() from employees;

select id,dept,salary,sum(salary) over(partition by dept) from employees;

select id,dept,salary,max(salary) over(partition by dept) from employees;

select id,dept,salary,sum(salary) over(partition by dept) from employees;

-- rolling sum,avg
select id,dept,salary,sum(salary) over(order by salary) from employees;

select id,dept,salary,sum(salary) over(partition by dept order by salary) from employees;

select id,dept,salary,salary ,row_number() over(partition by dept) from employees;

-- ranking => skip next if same
select id,dept,salary,salary ,rank() over(partition by dept order by salary desc) from employees;

-- dense_rank => dont skip
select id,dept,salary,salary ,dense_rank() over(partition by dept order by salary desc) from employees;

-- lag and lead
select id,dept,salary,salary ,lead(salary) over(partition by dept order by salary desc) from employees;

select id,dept,salary,salary ,lead(salary,2) over(partition by dept order by salary desc) from employees;

select id,dept,salary,salary ,lag(salary) over(partition by dept order by salary desc) from employees;

select id,dept,salary,salary - lead(salary) over(partition by dept order by salary desc) from employees;

-- ntile
select id,dept,salary,salary ,ntile(2) over(partition by dept order by salary desc) from employees;


