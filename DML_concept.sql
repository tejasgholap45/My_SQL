create database b4_kaamgar;
use b4_kaamgar;

CREATE TABLE employee (
	emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    job_title VARCHAR(50),
    salary DECIMAL(10, 2),
    department VARCHAR(50)
);

show tables;

INSERT INTO employee (emp_id, first_name, last_name, email, phone_number, job_title, salary, department) VALUES
(29, 'Om Laxmman', 'Khairnar', 'om.khairnar@company.com', '9876543238', 'Data Scientist', 92000.00, 'Data Science'),
(30, 'Sanket Sanjay', 'Sonparate', 'sanket.sonparate@company.com', '9876543239', 'Machine Learning Engineer', 95000.00, 'AI Research'),
(31, 'Safinabano', 'Shah', 'safinabano.shah@company.com', '9876543240', 'Data Analyst', 76000.00, 'Analytics'),
(32, 'Harshada', 'Kadam', 'harshada.kadam@company.com', '9876543241', 'AI Specialist', 98000.00, 'AI Research'),
(33, 'Roshan Sampat', 'Ushir', 'roshan.ushir@company.com', '9876543242', 'Data Engineer', 87000.00, 'Data Engineering'),
(34, 'Pranav Sagar', 'Gaikwad', 'pranav.gaikwad@company.com', '9876543243', 'MLOps Engineer', 91000.00, 'DevOps'),
(35, 'Aditya Bhagvan', 'Jadhav', 'aditya.jadhav@company.com', '9876543244', 'Business Analyst', 78000.00, 'Business Intelligence'),
(36, 'Pratik', 'Banarase', 'pratik.banarase@company.com', '9876543245', 'Data Scientist', 94000.00, 'Data Science'),
(37, 'Prem Sunil', 'Dhavale', 'prem.dhavale@company.com', '9876543246', 'AI Researcher', 101000.00, 'AI Research'),
(38, 'Sharayu Uday', 'Deshmukh', 'sharayu.deshmukh@company.com', '9876543247', 'Data Engineer', 86000.00, 'Data Engineering'),
(39, 'Tanvi Gajanan', 'Bramhnakar', 'tanvi.bramhnakar@company.com', '9876543248', 'Machine Learning Engineer', 96000.00, 'AI Research'),
(40, 'Durgesh', 'Wagh', 'durgesh.wagh@company.com', '9876543249', 'Data Analyst', 75000.00, 'Analytics'),
(41, 'Abhishek', 'Shelke', 'abhishek.shelke@company.com', '9876543250', 'Data Scientist', 93000.00, 'Data Science'),
(42, 'Krushna', 'Shinde', 'krushna.shinde@company.com', '9876543251', 'MLOps Engineer', 89000.00, 'DevOps'),
(43, 'Sagar', 'Pagar', 'sagar.pagar@company.com', '9876543252', 'AI Specialist', 97000.00, 'AI Research'),
(44, 'Shubham', 'Shinde', 'shubham.shinde2@company.com', '9876543253', 'Data Engineer', 85000.00, 'Data Engineering'),
(45, 'Tejas', 'Gholap', 'tejas.gholap@company.com', '9876543254', 'Business Analyst', 77000.00, 'Business Intelligence'),
(46, 'Vinay Kailas', 'Ghanghav', 'vinay.ghanghav@company.com', '9876543255', 'Data Scientist', 91000.00, 'Data Science'),
(47, 'Arpita', 'Lakhe', 'arpita.lakhe@company.com', '9876543256', 'Machine Learning Engineer', 94000.00, 'AI Research'),
(48, 'Mansi Maroti', 'Madrewar', 'mansi.madrewar@company.com', '9876543257', 'Data Analyst', 74000.00, 'Analytics'),
(49, 'Raj', 'Mamarde', 'raj.mamarde@company.com', '9876543258', 'AI Researcher', 100000.00, 'AI Research'),
(50, 'Parshva', 'Mehta', 'parshva.mehta@company.com', '9876543259', 'Data Engineer', 84000.00, 'Data Engineering');

select * from employee;

alter table employee rename to majdoors;
select * from majdoors;

select * from majdoors where salary > 80000;
select * from majdoors where department = 'Data Engineering';
select * from majdoors where department = 'Data Engineering' and salary > 85000;

-- startwith p in first name-- 
select * from majdoors where first_name like 'P%' ;
select * from majdoors where first_name like 'T%' ;

-- endwith e in last name--
select * from majdoors where last_name like '%e';

-- first name me dursa charachter a he vo dhund ke do--
select * from majdoors where first_name like '_a%' ;

-- jinme a he nahi he vo--
select * from majdoors where not first_name like '%a%' ;
select * from majdoors where not first_name like '_a%' ;

-- update--
update majdoors SET salary = 60000 where emp_id = 39;
select * from majdoors;

-- Delete --
delete from majdoors where emp_id = 38;

-- and--
select * from majdoors where department = 'Data Enginnering' and department = 'Data science';

-- or
select * from majdoors where department = 'Data Enginnering' or department = 'Data science';

-- in (multiple selected)--
select * from majdoors where department in ("Data Engineering" ,"Data science");
select * from majdoors;

-- multiple delete --
delete from majdoors where emp_id in (37,36);
