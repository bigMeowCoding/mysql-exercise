select ' first_half_of_2019'                     as data_range,
       sum(invoice_total)                        as total_sales,
       sum(payment_total)                        as total_payments,
       (sum(invoice_total) - sum(payment_total)) as what_we_expect
from invoices
where invoice_date between '2019-01-01' and '2019-06-30'
union
select ' second_half_of_2019'                    as data_range,
       sum(invoice_total)                        as total_sales,
       sum(payment_total)                        as total_payments,
       (sum(invoice_total) - sum(payment_total)) as what_we_expect
from invoices
where invoice_date between '2019-07-01' and '2019-12-31'
union
select ' total'                                  as data_range,
       sum(invoice_total)                        as total_sales,
       sum(payment_total)                        as total_payments,
       (sum(invoice_total) - sum(payment_total)) as what_we_expect
from invoices
where invoice_date between '2019-01-01' and '2019-12-31';
