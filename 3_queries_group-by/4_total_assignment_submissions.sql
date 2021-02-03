-- SELECT cohorts.name as cohort_name, count(assignments_submissions.*) AS student_count 
-- FROM cohorts
-- JOIN students ON cohorts.id = cohort_id
-- GROUP BY cohort_name 
-- HAVING count(students.*) >= 18
-- ORDER BY student_count;

-- SELECT day, count(*) as total_assignments 
-- FROM assignments
-- GROUP BY day
-- ORDER BY day;

--mine
-- SELECT cohorts.name as cohort, count(assignments_submissions.*) as total_submissions
-- FROM cohorts JOIN assignments_submissions ON cohorts.id = cohort_id
-- GROUP BY cohort
-- ORDER BY total_submissions;

--answer: 
SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;