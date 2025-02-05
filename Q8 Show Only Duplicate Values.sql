# How would you retrieve all rows where column contain duplicate, but only showing the duplicate value. 

################################# METHOD 1
SELECT * FROM (
select 
  *,
  row_number() over (partition by employee_id) as rank_
FROM
  `civil-keyword-423715-j2.Z_TANYA.ORDER_DATA`

) WHERE rank_ > 1
