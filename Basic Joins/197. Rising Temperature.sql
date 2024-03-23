CREATE TABLE Weather (
    id INT PRIMARY KEY,
    recordDate DATE,
    temperature INT
);

INSERT INTO Weather (id, recordDate, temperature) VALUES 
(1, '2015-01-01', 10),
(2, '2015-01-02', 25),
(3, '2015-01-03', 20),
(4, '2015-01-04', 30);

SELECT today.id AS today_id, today.recordDate AS today_date, today.temperature AS today_temperature
FROM Weather today
JOIN Weather yesterday ON today.recordDate = DATE_ADD(yesterday.recordDate, INTERVAL 1 DAY)
WHERE today.temperature > yesterday.temperature;

select * from weather;

select today.id
from weather as today
join weather as yesterday on today.recordDate = date_add(yesterday.recordDate, interval 1 day)
WHERE today.temperature > yesterday.temperature;

SELECT w1.id
FROM Weather w1, Weather w2
WHERE DATEDIFF(w1.recordDate, w2.recordDate) = 1 AND w1.temperature > w2.temperature;

SELECT DATE_ADD(NOW(), INTERVAL 1 DAY);
