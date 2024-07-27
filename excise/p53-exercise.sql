select client_id,
       (select sum(invoice_total) from invoices inv where c.client_id = client_id) as sum_invoice_total,
       (select avg(invoice_total) from invoices)                                   as avg_invoice_total,
       (select sum_invoice_total - avg_invoice_total)                              as diff
from clients c;
