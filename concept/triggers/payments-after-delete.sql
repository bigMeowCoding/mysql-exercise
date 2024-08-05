drop trigger if exists paymentsAfterDelete;
create trigger paymentsAfterDelete
    after delete
    on payments
    for each row
begin
    update invoices i
    set i.payment_total = case
                              when i.payment_total - OLD.amount < 0 then 0
                              else i.payment_total - OLD.amount
        end
    where i.invoice_id = OLD.invoice_id;
end;
