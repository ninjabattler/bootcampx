SELECT name, id, cohortId
FROM students
WHERE email IS NULL OR phone IS NULL;