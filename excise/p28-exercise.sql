update orders
set comments ='GOLD'
where customer_id in (select customer_id
                      from customers
                      where points > 3000);
