-- --mine:
-- SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
-- FROM students
-- JOIN assignment_submissions ON student_id = students.id
-- JOIN assignments ON students.id
-- WHERE end_date IS NULL
-- GROUP BY student
-- ORDER BY average_assignment_duration DESC;

--answer:
SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;


-- CREATE TABLE assignment_submissions (
--   id SERIAL PRIMARY KEY NOT NULL,
--   assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
--   student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
--   duration INTEGER,
--   submission_date DATE
-- );

