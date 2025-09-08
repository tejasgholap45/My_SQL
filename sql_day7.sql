create database company;
use company;

select * from payment;
select * from customer;

-- join both table
-- inner join
select first_name , mode from customer,payment;
select first_name , mode from customer join payment on customer.customer_id = payment.customer_id;
select customer.customer_id ,first_name , mode from customer join payment on customer.customer_id = payment.customer_id;

select c.customer_id ,c.first_name , p.mode from customer c join payment p on c.customer_id = p.customer_id;
select c.customer_id ,c.first_name , p.mode from customer c inner join payment p on c.customer_id = p.customer_id;

-- left join
select c.customer_id ,c.first_name , p.mode from customer c left join payment p on c.customer_id = p.customer_id;

-- right join
select c.customer_id ,c.first_name , p.mode from customer c right join payment p on c.customer_id = p.customer_id;
select * from customer c right join payment p on c.customer_id = p.customer_id;

-- union join 
select * from customer c left join payment p on c.customer_id = p.customer_id
union
select * from customer c right join payment p on c.customer_id = p.customer_id;
