-- -- group by walkthrough: 
-- --search students where enrolled students has null end_date
-- SELECT students.name as student, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.end_date IS NULL
-- GROUP BY students.name;

-- --having:
-- --Our WHERE clause works on normal data students.end_date and our HAVING clause works on the aggregated data count(assignment_submissions.*).
-- SELECT students.name as student, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.end_date IS NULL
-- GROUP BY students.name
-- HAVING count(assignment_submissions.*) < 100;

--GROUP BY allows us to combine the results based on a column so an aggregate can be applied to each group.
--HAVING allows us to filter our results based on the result of an aggregate function.

-- --mine, couldn't figure out
-- SELECT cohorts.name, sum(assignment_submissions.*) as total_submissions
-- FROM cohorts JOIN assignment_submissions ON 

--answer
SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;

-- SELECT students.name as student, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.end_date IS NULL
-- GROUP BY students.name
-- HAVING count(assignment_submissions.*) < 100;

-- SELECT day, count(*) as total_assignments 
-- FROM assignments
-- GROUP BY day
-- HAVING count(*) >= 10
-- ORDER BY day;