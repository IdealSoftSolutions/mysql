show databases;
use employees;
create table department(
dept_id int not null,
dept_name varchar(20),
 primary key(dept_id)
);

create table Employees(
emp_id int,
emp_name varchar(20),
dept_id int,
foreign key(dept_id)
references department(dept_id)
);

insert into department(dept_id,dept_name) values(10,'CSE');
insert into department() values(20,'Ece');
insert into department() values(30,'EEE');
  
delete from department where dept_id=10;

insert into employees(emp_id,emp_name,dept_id) values (1,'Ramu',20);
insert into employees() values(2,'Lakshman',30);
insert into employees() values(3,'Ravi',10);
insert into employees() values(4,'Ram',10);
delete from employees where dept_id=10;

truncate table employees;
select * from employees;
drop table employees;