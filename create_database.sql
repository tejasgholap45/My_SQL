create database Boys;
use Boys;

CREATE TABLE best_friends (
	id INT PRIMARY KEY,
    First_Name VARCHAR(50),
    phone_number VARCHAR(50),
    fav_food VARCHAR(50),
    Nick_name VARCHAR(50),
    nature VARCHAR(50),
	gav VARCHAR(50)
);

show tables;

INSERT INTO  best_friends (id, first_name, phone_number, fav_food, Nick_name, nature, gav) VALUES
(5, 'krushna', '5050123010', 'chicken', 'Voucher', 'Good', 'Thetale'),
(6, 'rohit', '9090909090', 'biryani', 'Hitman', 'Helpful', 'Nagpur'),
(7, 'akash', '8080808080', 'pav bhaji', 'Sky', 'Funny', 'Pune'),
(8, 'sneha', '7070707070', 'vada pav', 'Sweetu', 'Caring', 'Mumbai'),
(9, 'amit', '6060606060', 'paneer', 'Smarty', 'Calm', 'Nashik'),
(10, 'priya', '5050505050', 'dosa', 'Piku', 'Charming', 'Aurangabad');

select * from best_friends;
