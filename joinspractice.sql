show databases;
create database practice;
use practice;
create table employee (Emp_Id int, Emp_Name varchar(50),Emp_No Numeric);
desc employee;
select*from  employee;
insert into employee ()
values (101,	'Ashish Kaktan' ,	9450425345),
(102,	'Raj Choudhary',	8462309621),
(103,	'Vivek Oberoi'	,7512309034),
(104,	'Shantanu Khandelwal'	,9020330023), 
(105,	'Khanak Desai',	8451004522);
create table Employment (Emp_Id int, Emp_profile Varchar(50), Emp_Country varchar(50), Emp_Join_Date Date);
 select * from Employment;
 insert into Employment() values 
 (101,	'Content Writer',	'Germany'	,'2021-04-20'),
(104,	'Data Analyst',	'India',	'2022-12-11'),
(105,	'Software Engineer',	'India',	'2022-01-03'),
(108,	'Development Executive',	'Europe	','2023-02-15'),
(109,	'Marketing Manager',	'Mexico',	'2020-05-23');

select a.Emp_Id,a.Emp_Name,a.Emp_No,b.Emp_profile,b.Emp_Country,b.Emp_Join_Date from employee a join employment b on a.Emp_Id=b.Emp_Id;
select a.Emp_Id,a.Emp_Name,a.Emp_No,b.Emp_profile,b.Emp_Country,b.Emp_Join_Date from employee a left join employment b  on a.Emp_Id=b.Emp_Id;
select a.Emp_Id,a.Emp_Name,a.Emp_No,b.Emp_profile,b.Emp_Country,b.Emp_Join_Date from employee a right join employment b on a.Emp_Id=b.Emp_Id;
select a.Emp_Id,a.Emp_Name,a.Emp_No,b.Emp_profile,b.Emp_Country,b.Emp_Join_Date from employee a left join employment b  on a.Emp_Id=b.Emp_Id 
union
select a.Emp_Id,a.Emp_Name,a.Emp_No,b.Emp_profile,b.Emp_Country,b.Emp_Join_Date from employee a right join employment b on a.Emp_Id=b.Emp_Id;