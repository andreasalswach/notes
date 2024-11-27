-- Some comment that is ignored by the DB (using double dash)

SELECT * FROM courses;

SELECT * FROM assignments
LIMIT 10; 

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- Use this query as a reference for the next step

SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

-- all queries i ran successfully:

SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';


SELECT min(due_date) AS earliest_due_date
FROM assignments;


SELECT max(due_date) AS latest_due_date
FROM assignments;


SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';


SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';


SELECT max(due_date) AS most_recent_completed
FROM assignments
WHERE status = 'Completed';


SELECT count(*) AS not_started_count
FROM assignments
WHERE status = 'Not Started';


SELECT course_id, course_name
FROM courses
WHERE course_name LIKE 'Tue%';


SELECT courses.course_id, courses.course_name, assignments.title, assignments.due_date
FROM courses
JOIN assignments
  ON courses.course_id = assignments.course_id;


