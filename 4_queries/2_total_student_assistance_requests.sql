--ex
-- SELECT count(assistance_requests.*) as total_assistances, teachers.name
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- WHERE name = 'Waylon Boehm'
-- GROUP BY teachers.name;

--mine WAS CORRECT TOO:
SELECT count(assistance_requests.*) as total_assistances, students.name
FROM students
JOIN assistance_requests ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;

-- --their answer:
-- SELECT count(assistance_requests.*) as total_assistances, students.name
-- FROM assistance_requests
-- JOIN students ON students.id = student_id
-- WHERE name = 'Elliot Dickinson'
-- GROUP BY students.name;


--  Schema |          Name          | Type  |  Owner  
-- --------+------------------------+-------+---------
--  public | assignment_submissions | table | vagrant
--  public | assignments            | table | vagrant
--  public | assistance_requests    | table | vagrant
--  public | cohorts                | table | vagrant
--  public | students               | table | vagrant
--  public | teachers               | table | vagrant