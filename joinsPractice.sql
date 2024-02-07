show databases;
use practice;
create database practice;
create table employee(
emp_id int,
emp_name varchar (20),
emp_no numeric
);

create table employement(
emp_id int,
emp_profile varchar(30),
emp_country varchar(20),
emp_join_date date
);

insert into employee() values(101,'Ashih',9450425345);
insert into employee() values(102,'Raj',8462309621);
insert into employee() values(103,'Vivek',7512309034);
insert into employee() values(104,'Shantanu',9020330023);
insert into employee() values(105,'Khanak',8451004522);
select * from employee;

insert into employement() values(101,'Content Writer','Germany', '2021-04-20');
insert into employement() values(104,'Data Analyst','India','2022-12-11');
insert into employement() values(105,'Software Engineer','India','2022-01-03');
insert into employement() values(108,'Development Executive','Europe','2023-02-15');
insert into employement() values(109,'Marketing Manager','Mexico','2020-05-23');
drop table employement;
select * from employement;

select a.emp_id,a.emp_name,a.emp_no,b.emp_profile,b.emp_country,b.emp_join_date from employee a join employement b on a.emp_id = b.emp_id;
select a.emp_id,a.emp_name,a.emp_no,b.emp_profile,b.emp_country,b.emp_join_date from employee a inner join employement b on a.emp_id = b.emp_id;
select a.emp_id,a.emp_name,a.emp_no,b.emp_profile,b.emp_country,b.emp_join_date from employee a right join employement b on a.emp_id = b.emp_id;
select a.emp_id,a.emp_name,a.emp_no,b.emp_profile,b.emp_country,b.emp_join_date from employee a left join employement b on a.emp_id = b.emp_id;
select a.emp_id,a.emp_name,a.emp_no,b.emp_profile,b.emp_country,b.emp_join_date from employee a left join employement b on a.emp_id = b.emp_id union
select a.emp_id,a.emp_name,a.emp_no,b.emp_profile,b.emp_country,b.emp_join_date from employee a right join employement b on a.emp_id = b.emp_id;