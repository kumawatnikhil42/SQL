
-- comment single line comment
show databases;

use sakila;
show tables;

select * from actor;

select actor_id,first_name,last_name from actor;

select actor_id,actor_id+5,first_name from actor;

select * from sakila.actor;

-- where clause --
select actor_id,first_name from actor
where actor_id=2;

select actor_id,first_name from actor
where actor_id>2;

-- between operator

select * from actor where actor_id between 2 and 5;

-- in operator

select * from actor
where actor_id in (2,3,4,7,8);

select * from actor
where first_name in ('NICK','ED','GRACE');

select * from actor
where first_name;

-- like opertor finds pattern in the data

select * from actor
where first_name like 'E%';

select * from actor
where first_name like 'SA%';

select * from actor
where first_name like '%D';

select * from actor
where first_name like '%ED';

select * from actor
where first_name like '%E%';

select * from actor
where first_name like '_E%';

select * from actor
where first_name like '__E%';

select actor_id,first_name from actor where first_name like '_____' ;

select first_name from actor where first_name like '__T%';

select last_name from actor where last_name like '%I_';

select last_name from actor where last_name like '_I%S__';




select first_name,last_name from actor;

select first_name,last_name from actor
where actor_id>2 and actor_id<7;

select first_name,last_name from actor
where actor_id not between 3 and 6;

select * from actor_info
where first_name = "NICK" and actor_id > 150;

select * from actor_info
where first_name = "NICK" or actor_id > 150;

select actor_id,first_name from actor
where (first_name = "JENNIFER" or first_name = "NICK") and actor_id>3;

describe actor;
desc actor;												

select first_name,lower(first_name) from actor;

-- concat joins the  mutliple data 
select first_name,last_name,concat(first_name,last_name) from actor;

select first_name,last_name,concat(first_name," ",last_name) from actor;

select first_name,last_name,concat_ws(' ',first_name,last_name,actor_id) from actor;

-- substr returns the substring from the data
select first_name,substr(first_name,3) from actor;

select first_name,substr(first_name,2,4) from actor;

select first_name,substr(first_name,-1) from actor;

select first_name,substr(first_name,-4,3) from actor;


select first_name from actor
where first_name like concat("E","%");


select first_name, instr(first_name,"E") from actor;

select first_name, instr(first_name,"E") from actor;

select first_name, instr(first_name,"EN") from actor;

select first_name, locate("E",first_name,3) from actor;

-- substr -> data extrtact 
-- instr -> Char ko data mai seacrh krna(index Position)

-- length -> total no. of char.

select first_name, length(first_name) from actor;

select "hello" from dual;

select 1+2 from dual; 

select first_name,char_length(first_name) from actor;

select trim("     hello    ") from dual;

select trim(leading" " from "     hello     ") from dual;

select trim(trailing" " from "     hello     ") from dual;

select trim(both" " from "     hello     ") from dual;

select trim(both" " from "     he   llo     ") from dual;

select trim(leading"x" from "xxxhello     ") from dual;

-- round() roundoff
select round(11.5) from dual;


select round(11.53,1) from dual;

select round(11.5,-1) from dual;

select round(15.543,-1) from dual;

select round(65.543,-2) from dual;

select ceil(15.543) from dual;

select floor(15.543) from dual;

select truncate(10.2345,1) from dual;

select power(2,3) from dual;

select now() from dual; -- current system date and time

select curdate() from dual; -- current date

select curtime() from dual; -- current time

select now()+2 from dual; -- add seconds

select curdate()+2 from dual; -- add date

select adddate(now(), interval 2 day) from dual;

select adddate(now(), interval 2 week) from dual;

select adddate(now(), interval 2 month) from dual;


select adddate(now(), interval -2 day) from dual;

select date_sub(now(), interval 2 day) from dual;

select datediff('2024-03-22',curdate()) from dual;

select dayofweek("2024-03-18") from dual;

select dayofmonth("2024-03-18") from dual;

select dayofyear("2024-03-18") from dual;

select * from film_actor where year(last_update)=2006;


select extract(month from '2024-03-18');

select * from store;

select timestampdiff(month,'2023-03-18',now()) from dual;

select count(payment_id) from payment;
select sum(amount) from payment;
select avg(amount) from payment;

select count(customer_id) from payment;
 -- unique value
select count(Distinct(customer_id)) from payment;

-- group by ()  group the similar value
select count(customer_id), customer_id from payment
group by customer_id;

select first_name , count(first_name) from actor
group by first_name;

-- sorting
select first_name , count(first_name) from actor
group by first_name order by count(*) ;


select * from payment
order by customer_id , staff_id;

select first_name , count(first_name) from actor
group by first_name order by count(*) , first_name;

-- select can use only column used in group by
-- other columns are used in group by function or aggregate  function
-- like count min max avg sum 
-- apply condition for grooup by (having)
select count(customer_id), customer_id from payment
group by customer_id 
having count(*)>30;

select count(customer_id), customer_id from payment
where customer_id=1 or customer_id=2
group by customer_id having count(customer_id)>30;

select customer_id,count(customer_id),sum(amount) from payment
group by customer_id 
having sum(amount)>150 ;

-- string functions
-- concat : joins the string
-- length : return the length of string in bytes
-- locate : return the position of first occurence of substring and specific occurence 
-- instr : return the position of first occurence of substring
-- substr : return the substring from givemn position
-- trim : trim left and right
-- lpad , rpad : 

-- numeric functions 
-- round : roundoff the number
-- ceil : roundoff the number to upper
-- floor : roundoff the number to lower
-- truncate : extract value 
-- power : power

-- date function
-- now : return current date or time
-- curdate : returns current date
-- curtime : returns current time
-- adddate , time : add date or time
-- date_sub : subtract date
-- datediff : return diffrence between two dates 
-- timestampdiff : return diffrence between two dates according tom month,day,year 

-- multi row functions
-- distinct : returns unique value
-- count : return total no. values
-- sum : returns total sum of values
-- avg : returns average of values
-- group by : groups the similar type of values
-- order by : sorting

use sakila;
select * from address;

-- null values related functions (flow control function)

desc address; -- describe the table

select address_id,address2 ,ifnull(address2,10) from address; -- handle null value

select count( ifnull(address2,"ab") ) from address;

select customer_id,staff_id,nullif(customer_id,staff_id) from payment; -- check whether two values are same if same then return null 

select amount, if(amount>1,"Discount","No Discount") from payment;

-- nested if
select amount, if(amount>2,"50% Discount",if(amount>1,"30% Discount","No Discount")) from payment;

-- alternative of nested if is case
/* case expression
		when 2.99	then 50% off
		when 1.99 then 30% off
	end
*/
select amount,
case amount 
	when 2.99 then "50% off"
    when 1.99 then "30% off"
    else "No Discount"
end "Coupon"   
from payment;

-- this is the good approach rather than above
select amount,
case  
	when amount>2 then "50% off"
    when 1.99 then "30% off"
    else "No Discount"
end "Coupon"   
from payment;    

select payment_id,amount,
case
	when payment_id between 1 and 100 then amount-(amount*10/100)
    when payment_id between 151 and 250 then amount-(amount*25/100)
    else amount-(amount*1/100)
    end "Total Amount"
    from payment;
    
select payment_id,customer_id,amount,
case
	when customer_id>10 then amount+(amount*10/100)
    when customer_id>20 then amount+(amount*50/100)
    when customer_id>50 then amount+(amount*80/100)
    else "No increment"
    end "Total Amount"
    from payment;
    


