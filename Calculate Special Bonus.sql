SELECT employee_id , 
CASE 
    WHEN employee_id % 2 AND name NOT LIKE "M%" THEN salary 
    ELSE 0 
END AS bonus 
FROM employees

'''
Alternative Solution: 
# Write your MySQL query statement below
SELECT employee_id , 
IF (employee_id % 2 AND name NOT LIKE "M%", salary,0) AS bonus 
FROM employees 
'''

'''
2nd Alternative Solution 
SELECT employee_id, 
(salary * (name NOT LIKE "M%") * (employee_id % 2 <> 0) ) AS bonus 
FROM employees 
ORDER BY employee_id 

'''
