use employees;

select * from titles;

select t.emp_no,t.title,year(t.from_date) from titles as t join titles as m 
where (t.emp_no=m.emp_no) and (t.title!="Manager" and m.title="Manager");

select t.emp_no,t.title,year(t.from_date) from titles as t join titles as m 
where (t.emp_no=m.emp_no) and (t.title!="Manager" and m.title="Manager") and year(m.from_date)=year(t.from_date);

select emp_no ,year(from_date),year(to_date) from titles 
where title!="Manager";

select t.emp_no,t.title,year(t.from_date) from titles as t ;

-- mutli-column subquery
-- manager who worked on other position and got promotion in same year
select emp_no,title,year(from_date) from titles 
where title="Manager" and (emp_no,year(from_date) )in (select emp_no,year(from_date) from titles  where title!="Manager");

select * from salaries;

select emp_no,sum(salary) from salaries
where emp_no=10006 ; 

select emp_no,sum(salary) from salaries
group by emp_no having sum(salary) > (select sum(salary) from salaries
where emp_no=10006 group by emp_no);

-- row subquery
select e.emp_no,first_name,last_name from employees as e ,titles as t
where (e.emp_no,first_name,last_name,title)=(t.emp_no,"Georgi","Klassen","Staff");



 







