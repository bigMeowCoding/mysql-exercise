# 子查询方式
# select c.customer_id, c.first_name, c.last_name
# from customers c
# where c.customer_id in (select customer_id
#                         from order_items oi
#                                  join orders using (order_id)
#                         where oi.product_id = 3);
# 连接方式
select distinct c.customer_id, c.first_name, c.last_name
from customers c
         join orders using (customer_id)
         join order_items oi using (order_id)
where oi.product_id = 3;
