start transaction;

# insert into orders(customer_id, order_date, comments, shipped_date, status)
# values (1, '2024-04-01', 'order 1', '2019-01-02', 1);
# insert into order_items(order_id, product_id, quantity, unit_price)
# values (LAST_INSERT_ID(), 1, 10, 10);
update customers
set points = 0
where customer_id = 2;

commit
