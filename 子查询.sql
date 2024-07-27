# select*
# from products
# where product_id not in (select product_id from order_items);
# 相关子查询
# select *
# from employees e
# where salary > (select avg(salary) from employees where e.office_id = office_id);
# select中的子查询
# select invoice_total
#      , (select avg(invoice_total) from invoices)                 as avg_invoice_total
#      , invoice_total - (select avg(invoice_total) from invoices) as diff
# from invoices
# from语句
select *
from (select client_id,
             (select sum(invoice_total) from invoices inv where c.client_id = client_id) as sum_invoice_total,
             (select avg(invoice_total) from invoices)                                   as avg_invoice_total,
             (select sum_invoice_total - avg_invoice_total)                              as diff
      from clients c
) as subquery
where  sum_invoice_total is not null;
