# write a query to calculate ruuning total 

SELECT * ,
SUM(daily_sale) over (order by Month asc ) as running_total

FROM (
SELECT
  DATE_TRUNC(order_date,month) as Month,
  sum(price_per_unit * quantity) as daily_sale
FROM
  `civil-keyword-423715-j2.Z_TANYA.ORDER_DATA`
group by 1 order by 1 asc)