-- Write your PostgreSQL query statement below
WITH AUTHOR AS (
    SELECT article_id
         , author_id
      FROM Views
     GROUP BY article_id, author_id
)
SELECT DISTINCT a.author_id AS id
  FROM Views v
  JOIN AUTHOR a 
    ON v.article_id = a.article_id
   AND v.author_id  = a.author_id
 WHERE v.viewer_id  = v.author_id
 ORDER BY id
