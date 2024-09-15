# update products
# set properties = JSON_OBJECT('size', 'large', 'dimension', JSON_ARRAY(10, 20, 30), 'manufacturer',
#                              JSON_OBJECT('name', 'apple'))
# where product_id = 2;
#
# select product_id,  properties->>'$.dimension[1]' as dimension
# from products
# where product_id = 2;

update products
set properties = JSON_REMOVE(properties, '$.dimension')
where product_id = 1;
