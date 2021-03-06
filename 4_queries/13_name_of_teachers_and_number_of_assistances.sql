/*
Perform the same query as before, but include the number of assistances as well.
*/

SELECT teachers.name as name, cohorts.name as cohort, count(teachers.name) as total_assistances -- Could use count(assistance_requests)
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;

/* 
Notes on GROUP BY:
- Must have cohorts.name here because of aggregate function in SELECT?
- Create one record for this unique pair (where these columns are the same)
- Whatever you have in GROUP BY must be in select
*/