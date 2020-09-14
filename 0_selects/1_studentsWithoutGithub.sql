SELECT * 
FROM students
WHERE github IS NULL
ORDER BY cohortId
LIMIT 5;