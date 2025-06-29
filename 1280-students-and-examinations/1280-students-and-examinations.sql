-- Write your PostgreSQL query statement below
 SELECT s.student_id
     , s.student_name
     , s.subject_name
     , COUNT(e.student_id) AS attended_exams
  FROM (
    SELECT s.student_id
         , s.student_name
         , ss.subject_name
      FROM Students s, Subjects ss
  ) s
  LEFT JOIN Examinations e
    ON s.student_id = e.student_id
   AND s.subject_name = e.subject_name
 GROUP BY s.student_id, s.student_name, s.subject_name
 ORDER BY s.student_id, s.subject_name