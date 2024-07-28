# create view sales_by_client as
# select client_id,
#        sum(invoice_total) as total_sales
# from clients
#          join invoices using (client_id)
# group by client_id;
# 删除视图
# drop view if exists sales_by_client;
# 更改视图
# create or replace view sales_by_client as
# select client_id,
#        sum(invoice_total) as total_sales
# from clients
#          join invoices using (client_id)
# group by client_id
# order by total_sales;

create or replace view client_balance as
select client_id,
       invoice_id,
       number,
       invoice_total,
       payment_total,
       (invoice_total - payment_total) as balance,
       invoice_date,
       due_date
from clients
         join invoices using (client_id);
