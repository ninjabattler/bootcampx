SELECT students.startDate, cohorts.name, cohorts.startDate, students.startDate
FROM students
JOIN cohorts ON students.cohortId = cohorts.id
WHERE cohorts.startDate > students.startDate;