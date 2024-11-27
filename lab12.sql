-- Concatenate course_name and semester with a hyphen
SELECT course_name || ' - ' || semester AS course_and_semester
FROM courses;


-- Find courses with lab sessions on Friday
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Friday%';


-- List assignments with a due date after the current date
SELECT title, due_date
FROM assignments
WHERE due_date > date();


-- Count assignments by status
SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;


-- Find the course with the longest course_name
SELECT course_name, LENGTH(course_name) AS name_length
FROM courses
ORDER BY name_length DESC
LIMIT 1;


-- Return all course names in uppercase
SELECT UPPER(course_name)
FROM courses;


-- List assignments due in September
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '%-09-%';


-- Find assignments with missing due dates
SELECT title
FROM assignments
WHERE due_date IS NULL;


-- Total assignments per course
SELECT a.course_id, COUNT(*) AS total_assignments
FROM assignments a
JOIN courses c ON a.course_id = c.course_id
GROUP BY a.course_id;


-- Find courses without any assignments
SELECT c.course_id, c.course_name
FROM courses c
LEFT JOIN assignments a ON c.course_id = a.course_id
WHERE a.course_id IS NULL;
