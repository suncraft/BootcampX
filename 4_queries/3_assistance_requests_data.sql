-- SELECT count(assistance_requests.*) as total_assistances, students.name
-- FROM students
-- JOIN assistance_requests ON students.id = student_id
-- WHERE name = 'Elliot Dickinson'
-- GROUP BY students.name;

-- SELECT count(assistance_requests.*) as total_assistances, students.name
-- FROM assistance_requests
-- JOIN students ON students.id = student_id
-- WHERE name = 'Elliot Dickinson'
-- GROUP BY students.name;
--tests code^^^


--mine
SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (assistance_requests.completed_at - assistance_requests.started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;

--answer:
-- SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- JOIN students ON students.id = student_id
-- JOIN assignments ON assignments.id = assignment_id
-- ORDER BY duration;



--  Schema |          Name          | Type  |  Owner  
-- --------+------------------------+-------+---------
--  public | assignment_submissions | table | vagrant
--  public | assignments            | table | vagrant
--  public | assistance_requests    | table | vagrant
--  public | cohorts                | table | vagrant
--  public | students               | table | vagrant
--  public | teachers               | table | vagrant