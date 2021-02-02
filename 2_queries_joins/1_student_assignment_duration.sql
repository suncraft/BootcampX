-- SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
-- FROM students
-- JOIN cohorts ON cohort_id = cohorts.id
-- WHERE cohorts.start_date != students.start_date
-- ORDER BY cohort_start_date;

--mine: 

-- SELECT sum(duration) as total_duration
-- FROM students RIGHT JOIN assignment_submissions
-- ON student.id = assignment_submissions.student_id
-- WHERE student.name = 'Ibrahim Schimmel';

--answer:
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';


-- INSERT INTO assignments (id, name, content, duration, day, chapter) VALUES (1, 'Delectus nam repellendus', 'Excepturi aliquam expedita voluptatem et aspernatur quidem sunt et. Iste quaerat velit quam consequatur dolor ut quia omnis. Ipsa repudiandae odio totam ab quia omnis. Excepturi sed porro amet atque velit aspernatur. Molestiae neque eum itaque incidunt omnis ut esse eum accusantium. Neque sed ea explicabo.', 30, 1, 1);
-- INSERT INTO assignments (id, name, content, duration, day, chapter) VALUES (2, 'Tempora atque nihil', 'Veniam voluptatem ipsam incidunt doloribus facilis aut rem. Quasi excepturi error hic magni officiis. Maiores sit et repellendus odit. Earum incidunt dolorem dolorem nemo voluptatum. Dicta voluptas itaque autem totam hic. Sunt id quia deserunt sequi qui est.', 60, 1, 2);

-- INSERT INTO assignment_submissions (id, assignment_id, student_id, submission_date, duration) VALUES (1, 1, 1, '2018-02-12T08:00:00.000Z', 22.5);
-- INSERT INTO assignment_submissions (id, assignment_id, student_id, submission_date, duration) VALUES (2, 2, 1, '2018-02-12T08:00:00.000Z', 60);