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


-- assignments for a specific course
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';


-- earliest assignment due date
SELECT min(due_date) AS earliest_due_date
FROM assignments;


--latest assignment due date
SELECT max(due_date) AS latest_due_date
FROM assignments;


--assignments due on a specific date
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';


--find all assignments due in october
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';


--find the most recent completed assignment
SELECT max(due_date) AS most_recent_completed
FROM assignments
WHERE status = 'Completed';


--count "not started" assignments
SELECT count(*) AS not_started_count
FROM assignments
WHERE status = 'Not Started';


--find courses with labs on tuesday
SELECT course_id, course_name
FROM courses
WHERE course_name LIKE 'Tue%';


--write a query that joins the two tables
SELECT courses.course_id, courses.course_name, assignments.title, assignments.due_date
FROM courses
JOIN assignments
  ON courses.course_id = assignments.course_id;


