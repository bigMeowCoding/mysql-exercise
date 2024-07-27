# insert into orders (order_id, customer_id, order_date, status)
# values (11, 1, '2024-01-01', 1),
#        (12, 2, '2024-01-02', 2),
#        (13, 3, '2024-01-03', 1),
#        (14, 4, '2024-01-04', 2),
#        (15, 5, '2020-01-05', 1);
# delete from orders where order_id = 15;
select *
from orders
where order_date >=
      (select (concat_ws('-', extract(year from now()), '01', '01')));
