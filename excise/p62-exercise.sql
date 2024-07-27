select concat_ws(' ', first_name, last_name) as customer,
       points,
       case
           when points > 3000 then 'gold'
           when points >= 2000 then 'silver'
           else 'bronze'
           end                               as category
from customers;
