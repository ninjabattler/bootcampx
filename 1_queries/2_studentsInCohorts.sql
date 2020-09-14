SELECT COUNT(students.name) AS total
FROM students
JOIN cohorts ON students.cohortId = cohorts.id
WHERE cohortId < 4;