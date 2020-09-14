SELECT name, id, cohortId
FROM students
WHERE NOT email LIKE ('%@gmail.com') AND phone IS NULL;