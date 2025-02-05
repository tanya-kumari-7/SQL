# How would you find the top 3 products with the highest total sales in the last year?

################################# METHOD 1

select 
  product_category,
  sum(quantity * price_per_unit) as total_sale
FROM
  `civil-keyword-423715-j2.Z_TANYA.ORDER_DATA` 
where date_trunc(order_date,year) = '2024-01-01'
group by 1 order by 2 desc limit 3