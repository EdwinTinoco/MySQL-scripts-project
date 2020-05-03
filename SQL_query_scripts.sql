USE university_schemma;



-- The average grade given by each professor 

SELECT CONCAT(p.professors_name ,' ', p.professors_last_name)  AS 'Professor', AVG(g.grades_score) AS 'Average grade'

FROM grades g

JOIN courses c

ON g.grades_courses_id = c.courses_id

JOIN professors p

ON c.courses_profesors_id = p.professors_id

GROUP BY p.professors_name

ORDER BY p.professors_name ASC;



-- The top grades for each student

SELECT CONCAT(s.students_name ,' ', students_last_name)  AS 'Student', MAX(g.grades_score) AS 'Top grades'

FROM students s

JOIN grades g

ON s.students_id = g.grades_students_id

GROUP BY s.students_name

ORDER BY s.students_name ASC;



-- Group students by the courses that they are enrolled in

SELECT CONCAT(s.students_name ,' ', students_last_name)  AS 'Student', c.courses_title AS 'Courses'

FROM students s

JOIN grades g

ON s.students_id = g.grades_students_id

JOIN courses c

ON g.grades_courses_id = c.courses_id

JOIN professors p

ON c.courses_profesors_id = p.professors_id

ORDER BY s.students_name, c.courses_title ASC;



-- Create a summary report of courses and their average grades, sorted by the most challenging course 
(course with the lowest average grade) to the easiest course

SELECT c.courses_title AS 'Course', AVG(g.grades_score) 'Average grades'

FROM grades g

JOIN courses c

ON g.grades_courses_id = c.courses_id

GROUP BY c.courses_title

ORDER BY g.grades_score ASC;



-- Finding which student and professor have the most courses in common


select * from courses;

select * from grades