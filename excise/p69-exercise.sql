#创建有结余的存储过程
create procedure get_balance()
begin
select invoice_id, client_id, invoice_total, payment_total, invoice_total - payment_total as balance
from invoices
         join clients using (client_id)
where invoice_total > payment_total;
end;

call get_balance();
