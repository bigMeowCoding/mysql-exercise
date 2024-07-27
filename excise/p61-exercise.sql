select p.name,
       p.product_id,
       count(*)                         as orders,
       if(count(*) > 1, 'many', 'once') as frequency
from order_items oi
         join products p on oi.product_id = p.product_id
group by p.product_id;
