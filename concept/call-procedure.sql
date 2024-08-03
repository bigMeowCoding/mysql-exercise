set @invoiceCount = 0;
set @invoiceTotal = 0;
call getClientUnpaidInvoices(3, @invoiceCount, @invoiceTotal);
select @invoiceCount, @invoiceTotal;
