use employee;
drop table Empinfo
create table Empinfo(
EmpID int,
EmpFname varchar(20),
EmpLname varchar(15),
Department varchar(20),
Project varchar(20),
Address varchar(20),
DOB int,
Gender varchar(20));
insert into Empinfo(EmpID,EmpFname,EmpLname,Department,Project,Address,DOB,Gender)
values(1,'Sanjay','Mehra','HR','P1','Hyderabad(HYD)',01/12/1976,'M'),
(2,'Ananya','Mishra','Admin','P2','Delhi(DEL)',02/05/1968,'F'),
(3,'Rohan','Diwan','Account','P3','Mumbai(BOM)', 01/01/1980,'M'),
(4,'Sonia','Kulkarni','HR','P1','Hyderabad(HYD)',02/05/1992,'F'),
(5,'Ankit','Kapoor','Admin', 'P2', 'Delhi(DEL)',03/07/1994,'M');
drop table Emp_position;
create table Emp_position(
EmpID int,
EmpPosition varchar(20),
DateOfJoining int,
Salary int);
insert into Emp_position(EmpID,EmpPosition,DateOfJoining,Salary)
                 values(1,'Manager',01/05/2024,50000),
						(2,'Executive',02/05/2024,75000),
						(3,'Manager',01/05/2024,90000),
						(2,'Lead',02/05/2024,85000),
						(1,'Executive',01/05/2024,30000);
#Write a query to fetch the EmpFname from the EmployeeInfo table in the upper case and use the ALIAS name as EmpName.

select upper(EmpFname) as  WORKER_NAME from Empinfo;
#Write a query to fetch the number of employees working in the department ‘HR’.
select count(*) from Empinfo where Department='HR';
#Write a query to get the current date.
select CURRENT_DATE();
#Write a query to retrieve the first four characters of  EmpLname from the EmployeeInfo table.
select substr(EmpLname,1,4) from Empinfo;
#Write a query to fetch only the place name(string before brackets) from the Address column of EmployeeInfo table.
select substring_index(Address,'(',1) from empinfo;
#Write a query to create a new table that consists of data and structure copied from the other table.
create table copy as select * from Empinfo ;
select * from copy
#Write  query to find all the employees whose salary is between 50000 to 100000.
select * from Emp_position where salary between 50000 and 100000;
#Write a query to find the names of employees that begin with ‘S’
select empFname from Empinfo where empFname like 's%';
select empFname from Empinfo where empFname like '%a';
select empFname from Empinfo where empFname like '%o%';
#Write a query to fetch top N records.
select * from Emp_position 
where EmpPosition='Manager'
order by salary desc;
#Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. 
#The first name and the last name must be separated with space.
select concat(EmpFname,' ',EmpLname) as Emp_Fullname from Empinfo;