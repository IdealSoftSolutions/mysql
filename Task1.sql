-- 1.create  below tables users,orders,product
create  table users(
user_id int,
email varchar(20),
user_name  varchar(10)
);

create table orders(
order_num int,
user_id int,
product_id varchar(20)
);

create table product(
product_id int,
product_name varchar(10),
price numeric
);


-- 2.insert 3 records in each table
insert into users(user_id,email,user_name) values(1,'abc@gamail.com','Ram');
insert into users() values(2,'cde@gmail.com','Ravi');
insert into users() values(3,'xyz@gmail.com','Raju');

insert into orders(order_num,user_id,product_id) values(10,1,15);
insert into orders() values(20,2,25);
insert into orders() values(30,3,35);

insert into product(product_id,product_name,price) values(1,'soap',30);
insert into product() values(2,'shampoo',50);
insert into product() values(3,'lotion',60);


-- 3.select all records from each table
select * from users;
select * from orders;
select * from product;

-- 4.select top 2 records from each table
select * from users limit 2;
select * from orders limit 2;
select * from product limit 2;

-- 5.select the products which  are having price more than 40 ,select Ram details , select order detail of Ram?

select * from product where price>=40;
select * from users where user_name='Ram';
select * from orders where user_id in (select user_id from users where user_name='Ram'); 

-- 6.update soap price to 40 rps?
update product set price=40 where product_name = 'soap';

-- 7.change the column name price to product_price?
alter table product change column price product_price numeric;

-- 8.Add new column user_address to users and insert address all exsisting users?
Alter table users add user_address varchar(40);
update users set user_address='cedar trace aprts' where user_id=1;
update users set user_address='woodhallow aprts' where user_id=2;
update users set user_address='pavilion aprts' where user_id=3;

-- 9.delete the records with backup?
start transaction;
delete from users;
select * from users;
 rollback ;
 
 -- 10.delete the records  without backup?
 truncate  table orders;
 select * from orders;
 
 -- 11.delete table with schema?
 drop table product;
 select * from product;
