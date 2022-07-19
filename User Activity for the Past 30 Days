# Write your MySQL query statement below
SELECT a.activity_date AS day, 
COUNT(DISTINCT(a.user_id)) AS active_users 
FROM (SELECT * FROM Activity WHERE DATE(activity_date) > '2019-06-27' AND DATE(activity_date) <= '2019-07-27' ) AS a 
GROUP BY activity_date 
HAVING active_users > 0; 
