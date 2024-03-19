CREATE TABLE Customer (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    referee_id INT,
    FOREIGN KEY (referee_id) REFERENCES Customer(id)
);

INSERT INTO Customer (id, name, referee_id) VALUES
(1, 'Will', NULL),
(2, 'Jane', NULL),
(3, 'Alex', 2),
(4, 'Bill', NULL),
(5, 'Zack', 1),
(6, 'Mark', 2);

-- Result

SELECT name FROM Customer
WHERE  referee_id  != 2 OR referee_id IS NULL;

