--8.Designing a Surrogate Key for Entity Identification

--Write a SQL query to design a surrogate key for entity identification.
CREATE TABLE EMPLOYEE(
  SSN VARCHAR(11),
  NAME VARCHAR(100),
  Department VARCHAR(100)
);

--Add a surrogate key for better identification
Alter TABLE Employees ADD INT INDENTITY(1,1) PRIMARY KEY;