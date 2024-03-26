
CREATE TABLE Activity (
    machine_id INT,
    process_id INT,
    activity_type VARCHAR(255),
    timestamp DECIMAL(10,3)
);

INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) VALUES 
(0, 0, 'start', 0.712),
(0, 0, 'end', 1.520),
(0, 1, 'start', 3.140),
(0, 1, 'end', 4.120),
(1, 0, 'start', 0.550),
(1, 0, 'end', 1.550),
(1, 1, 'start', 0.430),
(1, 1, 'end', 1.420),
(2, 0, 'start', 4.100),
(2, 0, 'end', 4.512),
(2, 1, 'start', 2.500),
(2, 1, 'end', 5.000);

-- result
select * from Activity;

--  use case when
SELECT 
    machine_id,
  round(AVG(end_time - start_time),3)   AS processing_time 
FROM (
    SELECT 
        machine_id,
        process_id,
        MAX(CASE WHEN activity_type = 'start' THEN timestamp END) AS start_time,
        MAX(CASE WHEN activity_type = 'end' THEN timestamp END) AS end_time
    FROM Activity
    GROUP BY machine_id, process_id
) AS process_times
GROUP BY machine_id;

-- use self join


Select a1.machine_id , round(avg(a2.timestamp - a1.timestamp),3) as  processing_time 
from Activity a1
join Activity a2 on 
		a1.machine_id = a2.machine_id AND 
        a1.process_id = a2.process_id AND
        a1.activity_type = 'start' AND  
        a2.activity_type = 'end'
group by  a1.machine_id


