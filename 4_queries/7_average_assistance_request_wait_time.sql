-- --their answer:
-- SELECT count(assistance_requests.*) as total_assistances, students.name
-- FROM assistance_requests
-- JOIN students ON students.id = student_id
-- WHERE name = 'Elliot Dickinson'
-- GROUP BY students.name;

-- SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (assistance_requests.completed_at - assistance_requests.started_at) as duration
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- JOIN students ON students.id = student_id
-- JOIN assignments ON assignments.id = assignment_id
-- ORDER BY duration;

--mine (correct)
SELECT avg(started_at - created_at) as average_wait_time
FROM assistance_requests;


-- SELECT cohorts.name as name, avg(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_time
-- FROM students
-- JOIN cohorts ON cohort_id = cohorts.id
-- JOIN assistance_requests ON students.id = student_id
-- GROUP BY cohorts.name
-- ORDER BY average_assistance_time DESC
-- LIMIT 1;