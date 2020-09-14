SELECT name, id, cohortId
FROM students
WHERE endDate IS NULL
ORDER BY cohortId;