select c.customer_id,sum( oi.unit_price * oi.quantity) as spend
from customers c
         join orders o using (customer_id)
         join order_items oi using (order_id)
where state = 'VA' and oi.unit_price * oi.quantity >10

group by c.customer_id
having spend > 100;
