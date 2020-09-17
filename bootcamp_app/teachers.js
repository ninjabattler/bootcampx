const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '1',
  host: 'localhost',
  database: 'bootcampx'
});

const queryString = `
SELECT teachers.name as teacher, cohorts.name as cohort
FROM cohorts
JOIN students ON cohorts.id = students.cohortId
JOIN assistance_requests ON students.id = assistance_requests.student_id
JOIN teachers ON assistance_requests.teacher_id = teachers.id
WHERE cohorts.name LIKE ($1)
GROUP BY teachers.name, cohorts.name
`

const values = [`%${process.argv[2]}%`];

pool.query(queryString, values)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort}: ${user.teacher}`);
  })
})
.catch(err => console.error('query error', err.stack));