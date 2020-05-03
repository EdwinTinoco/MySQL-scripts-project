USE university_schemma;


INSERT INTO grades(grades_students_id, grades_courses_id, grades_score)
VALUES (1, 1, 80);


INSERT INTO grades(grades_students_id, grades_courses_id, grades_score)
VALUES (1, 6, 90);


INSERT INTO grades(grades_students_id, grades_courses_id, grades_score)
VALUES (1, 7, 100);


INSERT INTO grades(grades_students_id, grades_courses_id, grades_score)
VALUES (2, 6, 100);


INSERT INTO grades(grades_students_id, grades_courses_id, grades_score)
VALUES (2, 3, 50);


INSERT INTO grades(grades_students_id, grades_courses_id, grades_score)
VALUES (4, 1, 98);


INSERT INTO grades(grades_students_id, grades_courses_id, grades_score)
VALUES (4, 3, 70);


INSERT INTO grades(grades_students_id, grades_courses_id, grades_score)
VALUES (4, 4, 55);


INSERT INTO grades(grades_students_id, grades_courses_id, grades_score)
VALUES (5, 6, 100);


INSERT INTO grades(grades_students_id, grades_courses_id, grades_score)
VALUES (5, 2, 79);



select * from students;

select * from professors;

select * from courses;

select * from grades;