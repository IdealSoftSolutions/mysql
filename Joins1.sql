use employee;
#to get all data from both tables
select * from Employee_table as A,
Full JOIN Employement_table as B on A.emp_id=B.emp_id;
#to get matched data from both tables
select * from Employee_table as A inner join Employement_table as B where A.emp_id=B.emp_id;
#to get left data from tables
select * from Employee_table as A left join Employement_table as B on A.emp_id=B.emp_id;
#to get right data from tables
select * from Employee_table as A right join Employement_table as B on A.emp_id=B.emp_id;
select * from Employee_table as A left join Employement_table as B on A.emp_id=B.emp_id union select * from Employee_table as A right join Employement_table as B on A.emp_id=B.emp_id