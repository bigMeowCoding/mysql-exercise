#创建给定用户invoice的存储过程
# create procedure getPayments(client_id int, pay_menthod_id int)
# begin
#     select *
#     from payments p
#     where p.client_id = ifnull(client_id, p.client_id)
#       and p.payment_method = ifnull(pay_menthod_id, p.payment_method);
# end;

call getPayments(5,null);
