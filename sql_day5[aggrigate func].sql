use b4_kaamgar;

-- count--
select count(*) from majdoors where department = 'AI Research'; 
select count(*) from majdoors where department = 'Business Intelligence'; 
select count(*) from majdoors where department not in ('Data Engineering' , 'Data Science'); 
select * from majdoors;

-- sum --
select sum(salary) from majdoors;

select sum(salary)  from majdoors where department = 'AI Research';
select sum(salary) 'total' from majdoors where department = 'AI Research';
 
 select sum(salary) from majdoors where department not in ('AI Research','Data Enginnering');
 
 -- avg --
 select avg(salary) from majdoors where department = 'AI Research';
 select avg(salary) from majdoors where department = 'Analytics';
 
 -- min --
 select min(salary) from majdoors where department = 'Analytics';
 select * from majdoors where department = 'Analytics';
 
