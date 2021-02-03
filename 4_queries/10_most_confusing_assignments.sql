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

-- SELECT avg(started_at - created_at) as average_wait_time
-- FROM assistance_requests;

-- SELECT avg (total_duration) as average_total_duration
-- FROM (
--   SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
--   FROM assistance_requests
--   JOIN students ON students.id = student_id
--   JOIN cohorts on cohorts.id = cohort_id
--   GROUP BY cohorts.name
--   ORDER BY total_duration
-- ) as total_durations;

--mine:
-- SELECT assignment_id as id, assignments.name as name, assignments.day as day, assignments.chapter as chapter, count(assistance_requests.*) as total_requests
-- FROM assignments
-- JOIN assistance_requests ON assignments.id = assignment_id
-- -- WHERE total_requests = id
-- GROUP BY assignments.id
-- ORDER BY total_requests;

--answer:
SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;


-- SELECT cohorts.name as name, avg(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_time
-- FROM students
-- JOIN cohorts ON cohort_id = cohorts.id
-- JOIN assistance_requests ON students.id = student_id
-- GROUP BY cohorts.name
-- ORDER BY average_assistance_time DESC
-- LIMIT 1;