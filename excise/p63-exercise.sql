create view client_balance as
select client_id, sum(invoice_total - payment_total) as balance
from invoices
         join clients using (client_id)
group by client_id;
