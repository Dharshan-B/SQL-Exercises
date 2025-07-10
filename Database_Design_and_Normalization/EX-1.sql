--1. Designing a Table in First Normal Form (1NF)

--Write a SQL query to normalize a table into First Normal Form (1NF)

-- Original table with repeating groups.
CREATE TABLE Orders (
    OrderID INT,
    CustomerName VARCHAR(100),
    ProductNames VARCHAR(MAX) -- Comma-separated list of products.
);

-- Normalize the table into 1NF by splitting repeating groups.
CREATE TABLE Orders_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    ProductName VARCHAR(100)
);
