# Write a query to find the second highest salary from an empl table 

# method 1 

SELECT * except(rank_) FROM (
SELECT 
  emp_id,
  total_salary,
  RANK() over (order by total_salary desc) as rank_
FROM `civil-keyword-423715-j2.Z_TANYA.emp_table`
) where rank_ = 2


##############################################################

# Method 2

SELECT 
  emp_id,
  total_salary as second_highest_salary 
FROM `civil-keyword-423715-j2.Z_TANYA.emp_table`  where total_salary = (
  SELECT 
    max(total_salary) as _second_highest_salary
    FROM `civil-keyword-423715-j2.Z_TANYA.emp_table` where total_salary < (
  SELECT max(total_salary) from `civil-keyword-423715-j2.Z_TANYA.emp_table`))
