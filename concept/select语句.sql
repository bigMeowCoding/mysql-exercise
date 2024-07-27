# select *
# from sql_store.customers
# where state <> 'VA';

# select *
# from customers
# where birth_date > '1990-01-01'
#   and city <> 'Chicago';
# birth_date为1991年的用户，按照state和points排序
# SELECT customer_id, first_name, last_name, birth_date, state, points
# FROM customers
# where birth_date regexp '198.-..-..'
# order by state, points desc;
# SELECT state, birth_date, points
# FROM customers
# WHERE NOT state = 'VA' AND points > 1000
#    OR birth_date >= '1990-01-01'
# order by birth_date;

# ifnull
# select order_id, ifnull( shipper_id,'not assigned') as shipper
# from orders;

# select  order_id, coalesce(shipper_id,comments,'not assigned') from orders


select *
from sales_by_client where total_sales> 800
