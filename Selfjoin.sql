use sakila;

-- self join
select emp.eid,emp.name,emp.managerid,mgr.name as manager from employee as emp join employee as mgr
where emp.managerid = mgr.eid;

select emp.eid,emp.name,emp.managerid,mgr.name as manager ,emp.salary as empsalary,mgr.salary as mgrsalary,if(mgr.salary<emp.salary,"greater","lower") from employee as emp join employee as mgr
where emp.managerid = mgr.eid;






