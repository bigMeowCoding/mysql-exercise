select *
from products p
where p.product_id not in (select product_id
                           from order_items)
#

# exist 方式
# select *
# from products p
# where not exists (select * from order_items where p.product_id = product_id)
