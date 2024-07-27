# 单列
# select sum(invoice_total) as total_sales, client_id
# from invoices
# group by client_id  ;
# 多列
# select sum(invoice_total) as total_sales, city
# from invoices
#          join clients using (client_id)
# group by city, state
# having
# select sum(invoice_total) as total_sales, client_id
# from invoices
# group by client_id
# having sum(invoice_total) > 500;
# rollup
# select sum(invoice_total) as total_sales, client_id
# from invoices
# group by client_id with rollup ;

# any
# select *
# from clients
# where client_id in  (select client_id
#                      from invoices
#                      group by client_id having count(*) >= 2);
# any 用法等于上边的in
select *
from clients
where client_id = any (select client_id
                       from invoices
                       group by client_id
                       having count(*) >= 2);
