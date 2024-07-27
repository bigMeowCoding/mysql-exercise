# select p.name, s.shipper_id
# from products p
#          cross join shippers s;
select p.name as product, s.name as shipper
from products p,
     shippers s
order by product;
