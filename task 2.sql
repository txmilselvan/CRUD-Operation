use ecommerce

select * from users;
insert into users (first_name,last_name,user_email,created_at)
values
('tamil','selvan','tamil@gmail.com',NOW()),
('naveen','','naveen@gmail.com',NOW()),
('visahl','kumar','vishal@gmail.com',NOW());

update users set last_name = 'kumar' where user_email = 'naveen@gmail.com'

delete from users where user_email='vishal@gmail.com'

select * from catagories

insert into catagories (name)
values
('Beauty product'),
('Electicals')

update catagories set name = 'cosmetic' where name = 'Beauty product'

delete from catagories where name = 'beauty product'

select * from product

insert into product (catagory_id,name,price,stock,created_at)
values
(1,'eye','1000','2',NOW()),
(2,'facewash','500','4',NOW()),
(3,'tv',20000,'3',NOW());

update product set price = '50000' where name = 'tv' 

delete from product where name = 'facewash'

select * from addresses;

insert into addresses (user_id,street,city,`state`,`zip`,`country`)
values
(1,'eb road','devakottai','tamil nadu','630304','india'),
(4,'md road','devakottai','tamil nadu','630306','india');

update addresses set city  = 'karaikudi' where zip = '630306'

delete from addresses where city = 'devakottai'

select * from orders ;

insert into orders (user_id,order_date,total_amount,billing_address_id,shipping_address_id)
values
(1,NOW(),50000,16,16),
(4,NOW(),60000,16,16),
(5,NOW(),50000,16,16);

update orders set total_amount = '70000' where user_id = '5'

delete from orders where user_id = '5'

select * from order_item;

insert into order_item (order_id,product_id,quantity,price)
values
(1,1,2,20000),
(2,2,3,50000),
(3,3,5,40000);

update order_item set price = 100000 where product_id = 3

delete from order_item where order_id = 3
