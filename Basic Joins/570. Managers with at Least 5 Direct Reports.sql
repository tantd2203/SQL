CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    department VARCHAR(255),
    managerId INT,
    FOREIGN KEY (managerId) REFERENCES employees(id)
);

INSERT INTO employees (id, name, department, managerId) VALUES
(101, 'John', 'A', NULL),
(102, 'Dan', 'A', 101),
(103, 'James', 'A', 101),
(104, 'Amy', 'A', 101),
(105, 'Anne', 'A', 101),
(106, 'Ron', 'B', 101);

-- result 

select e1.name 
from employees  e1
left join employees e2 on e1.id	 = e2.managerId
group by e1.id
having count(e2.managerId )>4
