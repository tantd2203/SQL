CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE EmployeeUNI (
    id INT PRIMARY KEY,
    unique_id INT UNIQUE,
    FOREIGN KEY (id) REFERENCES Employees(id)
);

INSERT INTO Employees (id, name) VALUES 
(1, 'Alice'),
(7, 'Bob'),
(11, 'Meir'),
(90, 'Winston'),
(3, 'Jonathan');

INSERT INTO EmployeeUNI (id, unique_id) VALUES 
(3, 1),
(11, 2),
(90, 3);



select employeeuni.unique_id  ,employees.name from Employees
left join EmployeeUNI on employees.id = employeeuni.id
