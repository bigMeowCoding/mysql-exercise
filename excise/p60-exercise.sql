select concat_ws(' ',first_name,last_name) as customer, ifnull(phone,'unknown') as phone  from customers;
