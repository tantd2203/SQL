CREATE TABLE World (
    name VARCHAR(255),
    continent VARCHAR(255),
    area INT,
    population BIGINT,
    gdp BIGINT
);

INSERT INTO World (name, continent, area, population, gdp) VALUES
('Afghanistan', 'Asia', 652230, 25500100, 20343000000),
('Albania', 'Europe', 28748, 2831741, 12960000000),
('Algeria', 'Africa', 2381741, 37100000, 188681000000),
('Andorra', 'Europe', 468, 78115, 3712000000),
('Angola', 'Africa', 1246700, 20609294, 100990000000);
-- Result
select 
name,population,area
from World
where population>=25000000 or area>=3000000;