create database window_fun;
use window_fun;

create table employees (
	emp_id int,
    emp_name varchar(50),
    department varchar(50),
    salary int
);

insert into employees (emp_id, emp_name, department, salary) values
(1, 'Amit', 'HR', 40000),
(2, 'Priya', 'HR', 45000),
(3, 'Rahul', 'IT', 50000),
(4, 'Sneha', 'IT', 600000),
(5, 'Rohan', 'IT', 55000),
(6, 'Neha', 'Sales', 30000),
(7, 'Vikas', 'Sales', 35000),
(8, 'Vishal', 'IT', 35000),
(9, 'Amar', 'Sales', 55000);

select * from employees;

-- aggregation

select emp_id,department,salary,
	sum(salary) over (partition by department order by department) as sum_fun ,
	avg(salary) over (partition by department order by department) as avg_fun ,
	min(salary) over (partition by department order by department) as min_fun ,
	max(salary) over (partition by department order by department) as max_fun ,
	count(salary) over (partition by department order by department) as count_fun
    from employees;
  
  -- RANKING FUNCION
  
-- row_number >> he pratek row la ranking karte
select emp_id,emp_name,salary,
	row_number() over (order by salary) as row_num
from employees;
    
-- rank fun >> ranking karte pun same asel ter sarkhe rranking dete ani 2 no skip karrte
select emp_id,emp_name,salary,
    rank() over (order by salary) as rank_num
from employees;

-- dense fun >> salarry la rankiig karrta pun no same asel terr sarkha raking dete ani skip ny karat
 select emp_id,emp_name,salary,   
    dense_rank() over (order by salary) as dense_num
from employees;

-- nitle func >> rows cha equal partiion karrte 
select emp_id,emp_name,salary, 
	Ntile(4) over (order by salary) as ntile_fun
from employees;

-- VALUE FUNC

-- lead()
select emp_id,emp_name,salary, lead(salary) over (order by salary) as lead_fun from employees;

-- lag ()
select emp_id,emp_name,salary, lag(salary) over (order by salary) as lag_fun from employees;

-- first_values
select emp_id,emp_name,salary, first_value(salary) over (order by salary) as fi_val_fun from employees;

-- last_values
select emp_id,emp_name,salary, last_value(salary) over (order by salary range between unbounded preceding and unbounded following) as la_val_fun from employees;

