-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- WHERE cohorts.name = 'FEB12';


-- SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- ORDER BY total_submissions DESC;

-- --mine
-- SELECT assignment_submissions.student_id as student, (sum(assignment_submissions.duration) / count(assignment_submissions.*)) as average_assignment_duration
-- FROM assignment_submissions;

--answer
SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;


-- CREATE TABLE assignment_submissions (
--   id SERIAL PRIMARY KEY NOT NULL,
--   assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
--   student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
--   duration INTEGER,
--   submission_date DATE
-- );