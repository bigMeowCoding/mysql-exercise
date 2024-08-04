# create procedure get_clients()
# begin
#     select *
#     from clients;
# end;

# 删除存储过程
# drop procedure if exists updateInvoices;
# 创建存储过程带参数
# create procedure getClientsByState(state varchar(2))
# begin
#     select *
#     from clients c
#     where c.state = ifnull(state, c.state);
# end;

# 更新invoices
# create procedure updateInvoices(invoiceId int, paymentTotal decimal(10, 2), paymentDate date)
# begin
#     if paymentTotal <= 0 then
#         signal sqlstate '22003'
#             set message_text = 'Payment total must be greater than or equal to 0';
#     end if;
#     update invoices i
#     set i.payment_total=paymentTotal,
#         i.payment_date=paymentDate
#     where i.invoice_id = invoiceId;
# end;
# 存储过程带返回值
# drop procedure if exists getClientUnpaidInvoices;
# create procedure getClientUnpaidInvoices(clientId int,out invoiceCount int, out invoiceTotal decimal(10, 2))
# begin
#     select count(*), sum(invoice_total)
#     into invoiceCount, invoiceTotal
#     from invoices i
#     where i.client_id = clientId
#       and i.payment_total = 0;
# end;

# 变量
drop procedure if exists get_risk_factor;
create procedure get_risk_factor()
begin
    declare riskFactor decimal(10, 2) default 0;
    declare invoiceTotal decimal(10, 2);
    declare invoiceCount int;
    select count(*), sum(invoice_total)
    into invoiceCount, invoiceTotal
    from invoices;
    set riskFactor = invoiceTotal / invoiceCount * 5;
    select riskFactor;
end;
