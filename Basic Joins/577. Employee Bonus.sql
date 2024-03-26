CREATE TABLE Employee (
    empId INT PRIMARY KEY,
    name VARCHAR(255),
    supervisor INT,
    salary INT
);

CREATE TABLE Bonus (
    empId INT PRIMARY KEY,
    bonus INT
);

INSERT INTO Employee (empId, name, supervisor, salary) VALUES 
(3, 'Brad', NULL, 4000),
(1, 'John', 3, 1000),
(2, 'Dan', 3, 2000),
(4, 'Thomas', 3, 4000);

INSERT INTO Bonus (empId, bonus) VALUES 
(2, 500),
(4, 2000);

SELECT 
  e.name , b.bonus
FROM 
    Employee e
LEFT JOIN 
    Bonus b ON e.empId = b.empId
WHERE b.bonus  <=500 or b.bonus is null
