--2. Resolving Partial Dependencies for Second Normal Form (2NF)

--Write a SQL query to resolve partial dependencies and achieve 2NF.
--ORIGINAL TABLE
CREATE TABLE Orders(
  OrdersID INT,
  CustomerID INT,
  CustomerName VARCHAR(100),
  ProductID INT,
  Quantity INT
);
--Resolving Partial Dependency by splitting into two tables 
CREATE TABLE Customers(
  CustomerID INT PRIMARY KEY,
  CustomerName VARCHAR(100)
);

CREATE TABLE Orders_2NF(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (CustomerID) References Customers(CustomerID)
);
