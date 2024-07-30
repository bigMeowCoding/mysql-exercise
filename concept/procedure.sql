# create procedure get_clients()
# begin
#     select *
#     from clients;
# end;

# 删除存储过程
# drop procedure if exists get_clientsByState;
# 创建存储过程带参数
# create procedure getClientsByState(state varchar(2))
# begin
#     select *
#     from clients c
#     where c.state = state;
# end;

