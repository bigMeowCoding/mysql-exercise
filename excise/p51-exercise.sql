# select *
# from invoices i
# where invoice_total > (select avg(invoice_total)
#                        from invoices
#                        where client_id = i.client_id)

select client_id, avg(invoice_total)
from invoices
group by client_id
