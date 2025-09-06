use b4_kaamgar;
select * from majdoors;

-- group by clause --
select department,count(*) from majdoors group by department;
select department,sum(salary) from majdoors group by department;
select * from majdoors where department = 'DevOps';

-- order by clause --
-- by default take ascending --
select first_name,salary from majdoors order by salary;
-- descending order --
select first_name,salary from majdoors order by salary DESC;

-- having clause --
select department, avg(salary) from majdoors group by department having avg(salary) > 60000;
select department, sum(salary) from majdoors group by department having avg(salary) > 20000;

use cars;
select * from car_price_dataset;

-- fuel type chi avg price kada --
select Fuel_Type, avg(Price) from car_price_dataset group by Fuel_Type;

select Model,Engine_Size from car_price_dataset order by Engine_Size;

select Model,count(Engine_Size)
from car_price_dataset
group by Model
having count(Engine_Size) > 315
order by count(Engine_Size);

-- brand model madhil min price kada --
select Brand,Model,min(Price) from car_price_dataset group by Brand,Model;
