# Write your MySQL query statement below
SELECT  
    V.customer_id,
    COUNT(*) AS count_no_trans 
FROM Visits AS V LEFT JOIN Transactions AS T
ON V.visit_id = T.visit_id
WHERE T.amount IS NULL 
GROUP BY V.customer_id
