#创建给定用户invoice的存储过程
# create procedure getInvoicesByClient(in_client_id int)
# begin
#     select *
#     from invoices
#     where client_id = in_client_id;
# end;
 call getInvoicesByClient(1);
