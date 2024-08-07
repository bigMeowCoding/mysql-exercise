# delete
# from invoices
# where invoice_id = 1;

# 子查询
# delete
# from invoices
# where client_id = (select clients.client_id from clients where name = 'Myworks');

# 删除payments

delete
from payments
where payment_id >= 9;
