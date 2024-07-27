select p.date, c.name as client, p.amount, pm.name
from payments p
         join payment_methods pm on p.payment_method = pm.payment_method_id
         join clients c using (client_id);
