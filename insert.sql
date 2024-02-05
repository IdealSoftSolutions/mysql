insert into employee(employee_id, employee_name, employee_phonNumber, employee_email,employee_salary,employee_address) values (10, 'ramu', 1234567891, 'xyz@gmail.com', 15000, 'gandhi road,hyd');
insert into employee() values(20, 'sita', 1234567892, 'uvw@gmail.com', 20000, 'gandhi road,tpt');
insert into employee() values(30, 'lakshman', 1234567893, 'stu@gmail.com', 25000, 'gandhi road, vizag');
insert into employee() values(40, 'bharat', 1234567894, 'abc@gmail.com', 30000, 'gandhi road, kadapa');
insert into employee() values(50, 'ravi', 1234567895, 'xxx@gmail.com', 35000, 'gandhi road, plr');
insert into employee() values('50', 5 , 1234567895, 'xxx@gmail.com', 35000, 'gandhi road, plr');
select * from employee;
alter  table employee add report_manager varchar(30);
\
ALTER TABLE employee change COLUMN employee_id  id int;
alter table employee change column employee_phonNumber phoneNumber int;
alter table employee drop column employee_address;
describe employee;