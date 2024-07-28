-- # update invoices
-- # set payment_total = invoice_total * 0.5,
-- #     payment_date=due_date
-- # where client_id = 3;
--
-- # 子查询 1
-- # update invoices
-- # set payment_total = invoice_total * 1.5,
-- #     payment_date=due_date
-- # where client_id = (select client_id from clients where name = 'MyWorks');
-- # 子查询 2
-- # update invoices
-- # set payment_total = invoice_total * 1.5,
-- #     payment_date=due_date
-- # where client_id in (select client_id from clients where state in ('CA', 'NY'));
-- # 子查询 3
-- update invoices
-- set payment_total = invoice_total * 1.5,
--     payment_date=due_date
-- where payment_date is null;

update client_balance
set payment_total = invoice_total
where invoice_id = 2;
