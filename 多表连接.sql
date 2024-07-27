# select *
# from order_items oi
#          join sql_inventory.products p on oi.product_id = p.product_id;
# select c.customer_id,
#        c.first_name,
#        c.last_name,
#        o.order_id
# from customers c
#          right  join orders o on c.customer_id = o.customer_id
# order by c.customer_id;

#     自外连接
# select e1.employee_id,
#        e1.first_name,
#        e1.last_name,
#        e2.first_name as manager_first_name,
#        e2.last_name  as manager_last_name
# from employees e1
#          left join employees e2 on e1.reports_to = e2.employee_id order by manager_first_name desc ;

# using example1
# select c.first_name,
#        c.last_name,
#        o.order_id,
#        s.name
# from customers c
#          join orders o using (customer_id)
#        left  join shippers s using (shipper_id)
# using example2
# select *
# from order_items oi
#          join order_item_notes oin
#               on oi.order_id = oin.order_Id and oi.product_id = oin.product_id;
# 自然连接
# select * from orders o natural join customers c
# 交叉连接 写法1
# select c.first_name, p.name
# from customers c
#          cross join products p;
# 交叉连接 写法2
# select c.first_name, p.name
# from customers c,
#      products p;
# 联合
# select order_id, order_date, 'Active' as status
# from orders
# where order_date >= '2019-01-01'
# union
# select order_id, order_date, 'Inactive' as status
# from orders
# where order_date < '2019-01-01';
