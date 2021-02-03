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

--mine:
-- SELECT avg(sum(assistance_requests.completed_at) - sum(assistance_requests.started_at)) as average_assistance_request_duration
-- FROM assistance_requests;

--answer:
SELECT avg(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests;



--  Schema |          Name          | Type  |  Owner  
-- --------+------------------------+-------+---------
--  public | assignment_submissions | table | vagrant
--  public | assignments            | table | vagrant
--  public | assistance_requests    | table | vagrant
--  public | cohorts                | table | vagrant
--  public | students               | table | vagrant
--  public | teachers               | table | vagrant