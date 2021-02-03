-- SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
-- FROM students
-- JOIN cohorts ON cohort_id = cohorts.id
-- WHERE cohorts.start_date != students.start_date
-- ORDER BY cohort_start_date;

-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.name = 'Ibrahim Schimmel';

-- --mine:
-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN cohorts ON students.cohort_id = cohorts.id
-- WHERE cohorts.name = 'FEB12';

--answer
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';


-- INSERT INTO students (id, name, email, phone, github, start_date, end_date, cohort_id) VALUES (1, 'Armand Hilll', 'lera_hahn@dickens.org', '778-349-3299', 'aspernatur', '2018-02-12T08:00:00.000Z', '2018-04-20T07:00:00.000Z', 1);

-- INSERT INTO assignments (id, name, content, duration, day, chapter) VALUES (1, 'Delectus nam repellendus', 'Excepturi aliquam expedita voluptatem et aspernatur quidem sunt et. Iste quaerat velit quam consequatur dolor ut quia omnis. Ipsa repudiandae odio totam ab quia omnis. Excepturi sed porro amet atque velit aspernatur. Molestiae neque eum itaque incidunt omnis ut esse eum accusantium. Neque sed ea explicabo.', 30, 1, 1);
-- INSERT INTO assignments (id, name, content, duration, day, chapter) VALUES (2, 'Tempora atque nihil', 'Veniam voluptatem ipsam incidunt doloribus facilis aut rem. Quasi excepturi error hic magni officiis. Maiores sit et repellendus odit. Earum incidunt dolorem dolorem nemo voluptatum. Dicta voluptas itaque autem totam hic. Sunt id quia deserunt sequi qui est.', 60, 1, 2);

-- INSERT INTO assignment_submissions (id, assignment_id, student_id, submission_date, duration) VALUES (1, 1, 1, '2018-02-12T08:00:00.000Z', 22.5);
-- INSERT INTO assignment_submissions (id, assignment_id, student_id, submission_date, duration) VALUES (2, 2, 1, '2018-02-12T08:00:00.000Z', 60);


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