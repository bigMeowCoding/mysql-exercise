create view sales_by_client as
select client_id,
       sum(invoice_total) as total_sales
from clients
         join invoices using (client_id)
group by client_id;
