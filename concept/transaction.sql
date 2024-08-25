# start transaction;
#
# # insert into orders(customer_id, order_date, comments, shipped_date, status)
# # values (1, '2024-04-01', 'order 1', '2019-01-02', 1);
# # insert into order_items(order_id, product_id, quantity, unit_price)
# # values (LAST_INSERT_ID(), 1, 10, 10);
# update customers
# set points = points + 100
# where customer_id = 1;
#
# commit;
#  命令
# show variables like'transaction_isolation';
# set transaction isolation level serializable

# 可重复读
set transaction isolation level serializable ;
start transaction;
select *
from customers
where points < 100;

commit;
