---Get the name of all teachers that performed an assistance request during a cohort
SELECT teachers.name as teacher, cohorts.name as cohort
FROM assistance_requests
JOIN teachers ON assistance_requests.teacher_id = teachers.id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;
