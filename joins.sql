create table products(
product_id int unique not null,
product_name varchar(20),
product_price int 
);

create table orders(
order_id int,
order_name varchar(20),
product_id int,
user_id int
);

create table users_details(
user_id int,
user_name varchar(20)
);

insert into users_details() values(1,'Ram');
insert into users_details() values(2,'Sita');
insert into users_details() values(3,'Lakshman');
insert into users_details() values(4,'Hanuman');

insert into products() values(100,'Ornage',10);
insert into products() values(200,'Apple',15);
insert into products() values(300,'Grapes',20);
insert into products() values(400,'Mango',30);

insert into orders() values(1001,'Order1',100,1);
insert into orders() values(1002,'Order2',200,1);
insert into orders() values(1003,'Order3',100,4);
insert into orders() values(1004,'Order4',400,2);


select * from orders;
select * from products;
select * from users_details;
-- 1. Get the users who order the orders
select B.order_id,A.user_id,A.user_name,B.order_name,B.product_id from users_details A inner join orders B on A.user_id = B.user_id ;

-- 2. Get the user details and thier order details
select A.user_id,B.order_id,A.user_name,B.order_name,B.product_id from users_details A left outer join orders B on A.user_id = B.user_id;

-- 3. Get the product details and thier order details

select * from orders B right join Products P on P.product_id = B.product_id






