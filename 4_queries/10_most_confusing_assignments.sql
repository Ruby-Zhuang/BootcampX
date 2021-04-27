/*
List each assignment with the total number of assistance requests with it.

- Select the assignment's id, day, chapter, name and the total assistances.
- Order by total assistances in order of most to least.
*/

SELECT assignments.id as id, name, day, chapter, count(*) as total_requests -- Should use count(assistance_requests) as total_requests? 
FROM assistance_requests
JOIN assignments ON assignments.id =assistance_requests.assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;