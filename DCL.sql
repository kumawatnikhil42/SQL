-- DCL

-- user => username => password
create user bob identified by 'bob';

-- check current user 
select current_user();

-- check user is exist or not and permissions
select * from mysql.user;

select * from mysql.user where user="bob";

-- for delete user
drop user 'bob' ;

create user 'bob' identified by 'bob';
select * from mysql.user;

-- to give permission
grant all privileges on sakila.* to bob;
 
select * from mysql.user;

-- to see grants of users
show grants for 'bob';

-- to take all permission
revoke all privileges on sakila.* from 'bob';

use sakila;

-- to change password
alter user 'bob' identified by "nikhil";

-- set password ="new password";

grant select(actor_id,first_name) on  sakila.actor to bob;

-- refresh the privilages
flush privileges;

show grants for bob;

-- locking user
alter user 'bob' account lock;
flush privileges;

alter user 'bob' account unlock;
flush privileges;
 
 -- creating role (group)
 create role sales;
 grant select on sakila.* to sales;
 
 create user 'aman' identified by "aman";
 show grants for "aman";
 
 -- grant role to user
 grant sales to "aman";
 show grants for "aman";
 
 flush privileges;
 
 -- to make a group active for a certain user
 set default role all to aman;
 
 use sakila;
 create table test321(id int, name varchar(20) ,email varchar(20), amount int);
 
 create user "rock" identified by "rock";
 grant select on sakila.test321 to "rock";
 
 show grants for "rock";
 
 grant insert(id) on sakila.test321 to "rock";
 
 grant update(amount) on sakila.test321 to "rock";
 grant delete on sakila.test321 to "rock";-- 
 create role "hr";
 grant 'hr' to "rock";
 
 show grants for "rock";
 
 
 
 
 
 