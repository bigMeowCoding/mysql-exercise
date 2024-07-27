select p.date,
       sum(p.amount) as total_sales,
       pm.name       as payment_method
from payments p
         join payment_methods pm on p.payment_method = pm.payment_method_id
group by p.date, pm.name
order by p.date;
