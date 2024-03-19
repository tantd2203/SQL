CREATE TABLE products (
    product_id INT PRIMARY KEY,
    low_fats VARCHAR(1),
    recyclable VARCHAR(1)
);

INSERT INTO products (product_id, low_fats, recyclable) VALUES 
(0, 'Y', 'N'),
(1, 'Y', 'Y'),
(2, 'N', 'Y'),
(3, 'Y', 'Y'),
(4, 'N', 'N');

--  Result

select product_id from Products where (low_fats='Y' AND recyclable='Y')