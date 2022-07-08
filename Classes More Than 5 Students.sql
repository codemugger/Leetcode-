# Write your MySQL query statement below
SELECT class from (SELECT class,  COUNT(DISTINCT student) as Number_of_students FROM Courses GROUP BY class) AS temp_table  
WHERE Number_of_students >= 5 
