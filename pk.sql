show databases;
use employees;
create table product1(
product_id int,
product_name varchar(30),
primary key(product_id)
);


create table orders(
order_id int,
order_number numeric,
product_id int,
foreign key(product_id)
references products(product_id)
);

insert into products(product_id,product_name) values(1,'Lays');
insert into products() values(2,'Bingo');
insert into products() values(3,'Cheetos');
insert into products() values(4,'Sneakers');
select * from products;

insert into orders(order_id,order_number,product_id) values(10,123,2);
insert into orders() values(20,143,3);
insert into orders() values(30,555,4);
insert into orders() values(40,876,2);
select * from orders;

drop table orders;

create table product1(
id int unique not null,
product_name varchar(20)  
);
select * from product1;
  
insert into product1(id, product_name) values(1,'lays');
insert into product1() values(null,' ');
insert into product1() values(2,'lays');

