# 创建事件
# create event yearly_delete_old_audit_records
#     on schedule
#         #         at '2019-01-01 00:00:00'  # 一次性
#         every 1 year
#             starts '2024-08-01 00:00:00'
#     do
#     begin
#         delete
#         from payments_audit
#         where date < now() - interval 1 year;
#     end;

#  查看事件
show events;

# 删除事件
# drop event if exists yearly_delete_old_audit_records;

# 更新事件
alter event yearly_delete_old_audit_records on schedule
    every 1 year
        starts '2024-08-09 00:00:00'
    do
    begin
        delete
        from payments_audit
        where date < now() - interval 1 year;
    end;
