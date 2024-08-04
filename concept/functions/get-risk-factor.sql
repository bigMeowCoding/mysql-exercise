drop function if exists getRiskFactor;
create function getRiskFactor(clientId int)
    returns integer
    reads sql data
begin
    declare
        riskFactor decimal(10, 2) default 0;
    declare
        invoiceTotal decimal(10, 2);
    declare
        invoiceCount int;
    select count(*), sum(invoice_total)
    into invoiceCount, invoiceTotal
    from invoices i
    where i.client_id = clientId;
    set
        riskFactor = invoiceTotal / invoiceCount * 5;
    return ifnull(riskFactor, 0);
end
