-- SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
-- FROM students
-- JOIN assignment_submissions ON student_id = students.id
-- JOIN assignments ON assignments.id = assignment_id
-- WHERE end_date IS NULL
-- GROUP BY student
-- HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
-- ORDER BY average_assignment_duration;

--mine:
-- SELECT count(assistance_requests.id) as total_assistances, teachers.name
-- FROM teachers JOIN assistance_requests ON teacher_id = teachers.id
-- WHERE teachers.name = 'Waylon Boehm';

--answer:
SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;


--  Schema |          Name          | Type  |  Owner  
-- --------+------------------------+-------+---------
--  public | assignment_submissions | table | vagrant
--  public | assignments            | table | vagrant
--  public | assistance_requests    | table | vagrant
--  public | cohorts                | table | vagrant
--  public | students               | table | vagrant
--  public | teachers               | table | vagrant