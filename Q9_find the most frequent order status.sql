# Write a query to find the most frequent order status in an orders table.

################################# METHOD 1

select 
  order_status,
  count(*)
  
FROM
  `civil-keyword-423715-j2.Z_TANYA.ORDER_DATA` group by 1 order by 2 desc limit 1
