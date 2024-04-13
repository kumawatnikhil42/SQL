-- alter
-- ddl 
create database regex;

use regex;

create table companies(id int);
insert into companies values(10);

select * from companies;

desc companies;

-- add column
alter table companies 
add column phone varchar(15);

-- add column 
alter table companies 
add column address varchar(15) after id;

-- add constraint
alter table companies 
add column emp_count timestamp Not Null;

-- drop column
alter table companies 
drop column emp_count;

select * from companies;

desc companies;

-- rename with rename
rename table companies to newcompany;

select * from companies;
select * from newcompany;

-- rename with alter
alter table comapnies 
rename to companies;

select * from companies;

alter table companies 
rename column phone to company_name;

select * from companies;

-- upadate value
update companies set company_name="regex";

select * from companies;

-- update specific value
update companies set company_name="regexsoftware" where id=10;

select * from companies;

alter table companies
add primary key (id);

update companies set id=20 where id is null;

alter table companies
add constraint compay_uk unique(address);

alter table companies
drop constraint compay_uk;

desc companies;

-- change datatype use modify
update companies set company_name=null;

alter table companies
modify company_name int;

desc companies;

-- change address newcity char(10);
