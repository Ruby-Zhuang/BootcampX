/*
Calculate the average time it takes to start an assistance request.

- This is the duration between an assistance request being created, and it being started.
*/

SELECT AVG(started_at - created_at) AS average_wait_time
FROM assistance_requests;