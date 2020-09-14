SELECT name, email, phone
FROM students
WHERE NOT endDate IS NULL
AND github IS NULL
ORDER BY cohortId;