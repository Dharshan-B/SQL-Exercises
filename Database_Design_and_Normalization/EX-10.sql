--10.Designing a Star Schema for SQL Data Warehousing

--Write a SQL query to design a star schema for a data warehouse.

-- Fact table.
CREATE TABLE SalesFact (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    DateID INT,
    Quantity INT,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (DateID) REFERENCES Dates(DateID)
);

-- Dimension tables.
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE Dates (
    DateID INT PRIMARY KEY,
    Date DATE
);
--That's it