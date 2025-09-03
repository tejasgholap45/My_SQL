select * from majdoors;

-- new user show all the database but dont change in database--
GRANT SELECT ON b4_kaamgar.majdoors TO 'tej';

-- new user show all database and change in database--
GRANT update ON b4_kaamgar.majdoors TO 'tej';

-- revoke remove permission from the user--
   REVOKE update ON b4_kaamgar.majdoors FROM 'tej';

-- rollback--
SET autocommit = 0;
update majdoors SET salary = 60 where emp_id = 46;
update majdoors SET salary = 100 where emp_id = 46;
update majdoors SET salary = 200 where emp_id = 46;
rollback;
commit;
