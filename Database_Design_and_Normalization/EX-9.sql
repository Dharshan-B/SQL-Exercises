--9.Resolving Insertion Anomalies in Database Design

--Write a SQL query to resolve insertion anomalies in a poorly designed table.
-- Poorly designed table with insertion anomalies.
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    ManagerID INT,
    ManagerName VARCHAR(100)
);

-- Resolve anomalies by separating manager details.
CREATE TABLE Managers (
    ManagerID INT PRIMARY KEY,
    ManagerName VARCHAR(100)
);

CREATE TABLE Departments_Normalized (
    DepartmentID INT PRIMARY KEY,
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Managers(ManagerID)
);
