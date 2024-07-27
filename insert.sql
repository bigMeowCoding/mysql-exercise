# insert into customers
# values (default,
#         'tom',
#         'cruise',
#         '1990-01-01',
#         null,
#         'adress',
#         'city',
#         'ca',
#         default);
# 插入单行
# insert into customers
#     (last_name, first_name, birth_date, address, city, state)
# values ('jack', 'cruise', '1991-02-02', 'address', 'city', 'ca');

# 插入多行
# insert into products (name, quantity_in_stock, unit_price)
# values ('product1', 10, 10.2),
#        ('product2', 20, 20),
#        ('product3', 30, 30);

# 分层插入
# insert into orders (order_date, customer_id)
# values ('1990-01-01', 1);
# insert into order_items (order_id, product_id, quantity, unit_price)
# values (LAST_INSERT_ID(), 1, 10, 10),
#        (LAST_INSERT_ID(), 2, 20, 20)

# 复制
# create table orders_archived as
# select *
# from orders;
# 复制-插入写法
# insert into orders_archived
# select *
# from orders
# where order_date > '2019-01-01';
insert into invoices
(invoice_id, number, client_id, invoice_total, invoice_date, due_date, payment_date)
values (20, 2, 2, 200, '2019-01-02', '2019-02-02', null),
       (21, 3, 2, 300, '2019-01-03', '2019-02-03', null);
