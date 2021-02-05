const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

// const args = process.argv.slice(2);

//mine:
// pool.query(`
// SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
// FROM teachers
// JOIN assistance_requests ON teacher_id = teachers.id
// JOIN students ON student_id = students.id
// JOIN cohorts ON cohort_id = cohorts.id
// WHERE cohorts.name = 'JUL02'
// ORDER BY teacher;
// `)
// .then(res => {
//   console.log(res.rows);
// })

const queryString = `
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = $1
ORDER BY teacher;
  `;

//why won't this work????
// const cohortName = process.argv[2] || 'JUL02';
// const values = [`%${cohortName}%`];

const values = [`${process.argv[2] || 'JUL02'}`];

pool.query(queryString, values)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
})
.catch(err => console.error('query error', err.stack));

//### former correct: ####
// pool.query(`
// SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
// FROM teachers
// JOIN assistance_requests ON teacher_id = teachers.id
// JOIN students ON student_id = students.id
// JOIN cohorts ON cohort_id = cohorts.id
// WHERE cohorts.name = '${process.argv[2] || 'JUL02'}'
// ORDER BY teacher;
// `)
// .then(res => {
//   res.rows.forEach(row => {
//     console.log(`${row.cohort}: ${row.teacher}`);
//   })
// })
// .catch(err => console.error('query error', err.stack));


// //check for SQL injection
// SELECT name, email
// FROM students
// WHERE id = 1;

// //SQL injection:
// node students.js FEB "2; UPDATE students SET email = 'hacker@hacked.me' WHERE id = 1"