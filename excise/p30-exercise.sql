select customer_id, first_name, points, 'Bronze' as type
from customers
where points <= 1000
union
select customer_id, first_name, points, 'Sliver' as type
from customers
where points > 1000
  and points <= 2000
union
select customer_id, first_name, points, 'Gold' as type
from customers
where points > 2000
order by points asc;
