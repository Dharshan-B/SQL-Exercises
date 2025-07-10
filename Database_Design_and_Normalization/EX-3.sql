--3. Eliminating Transitive Dependencies for Third Normal Form (3NF)

--Write a SQL query to eliminate transitive dependencies and achieve 3NF.
CREATE TABLE EMPLOYEES(
  EmployeeID INT PRIMARY KEY;
  DEPARTMENTID INT,
  DEPARTMENTNAME VARCHAR(100),
  SALARY DECIMAL(10,2)
);
--Eliminate transitive dependency by splitting into two tables
CREATE TABLE Departments(
  DepartmentID INT PRIMARY KEY,
  DepartmentName VARCHAR(100)
);
CREATE TABLE EMPLOYEES_3NF(
  EmployeeID INT PRIMARY KEY,
  DepartmentID INT,
  Salary DECIMAL(10,2),
  FOREIGN KEY (DepartmentID) references Departments(DepartmentID)
);