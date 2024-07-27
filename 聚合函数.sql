# select
#     count(distinct client_id),
#     sum(invoice_total),
#     avg(invoice_total),
#     max(invoice_total),
#     min(invoice_total)
# from invoices where payment_date > '1991-01-01'
#
# select *
# from invoices
# where invoice_total > (select max(invoice_total) from invoices where client_id = 3)


# select *
# from invoices
# where invoice_total > all (select (invoice_total) from invoices where client_id = 3)

# select now();
# select curtime()
# select extract(year from now());


# select date_add(now(), interval 1 day);
#  select date_sub(now(), interval 1 day);

# select datediff('2024-01-01 9:00', '2024-01-05 14:00');
# select time_to_sec('14:00:00');

select order_id, order_date, if(year(order_date) = year(now()),'active','inactive') as status
from orders;
