-- Write your PostgreSQL query statement below
SELECT w.id
  FROM Weather w
  JOIN Weather wb
    ON w.recordDate = wb.recordDate + INTERVAL '1 day'
 WHERE w.temperature > wb.temperature