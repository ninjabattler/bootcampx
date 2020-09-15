SELECT teachers.name, cohorts.name, COUNT(assistance_requests.*)
FROM cohorts
JOIN students ON cohorts.id = students.cohortId
JOIN assistance_requests ON students.id = assistance_requests.student_id
JOIN teachers ON assistance_requests.teacher_id = teachers.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;