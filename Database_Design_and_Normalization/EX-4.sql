--4.Achieving Boyce-Codd Normal Form (BCNF)

--Write a SQL query to resolve overlapping candidate keys and achieve BCNF
--Original Table
CREATE TABLE Coures(
  CourseID INT,
  InstructorID INT,
  InstructorName VARCHAR(100),
  PRIMARY KEY (CourseID,InstructorID)
);
--Resolving overlapping candidate keys by splitting into two tables
CREATE TABLE Instructors(
  InstructorID INT PRIMARY KEY,
  InstrctorName VARCHAR(100);
);

CREATE TABLE Courses_BCF(
  CourseID INT,
  InstructorID INT,
  PRIMARY KEY(CourseID , InstructorID)
  FOREIGN KEY(InstructorID) References Instructors(InstructorID)
);
