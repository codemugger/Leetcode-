# Write your MySQL query statement below
/*

SELECT name FROM SalesPerson AS S
WHERE S.sales_id NOT IN (SELECT sales_id FROM Orders WHERE com_id = (SELECT com_id FROM Company WHERE name LIKE "RED"))

# This is my solution, took a freaking darn long time lollolol
*/ 

#Below submitted one is the solution provided by LeetCode. Well, guess there's much more room for improvement in my coding. Personally, quite disappointed with my database management understanding 

# Need to work on my Join also! 

SELECT  
    s.name 
FROM 
    salesperson AS s 
WHERE 
    s.sales_id NOT IN (SELECT o.sales_id 
FROM orders o 
LEFT JOIN 
company c ON o.com_id = c.com_id 
WHERE c.name = 'RED')
