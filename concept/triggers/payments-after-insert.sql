create trigger paymentsAfterInsert
    after insert
    on payments
    for each row
begin
    update invoices i
    set i.payment_total = i.payment_total + new.amount
    where i.invoice_id = new.invoice_id;
end;
