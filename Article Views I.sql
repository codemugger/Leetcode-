# Write your MySQL query statement below
SELECT DISTINCT(V.author_id) AS id 
FROM  (SELECT author_id, viewer_id FROM Views WHERE author_id = viewer_id) AS V
ORDER BY 1 ASC 
