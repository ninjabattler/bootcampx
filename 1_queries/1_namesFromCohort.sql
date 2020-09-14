SELECT students.id, students.name
FROM students
JOIN cohorts ON students.cohortId = cohorts.id
WHERE cohortId = 1
ORDER BY students.name;