--5.Identifying and Resolving Update Anomalies

--Write a SQL query to identify and resolve update anomalies in a poorly designed table.
-- Poorly designed table with update anomalies.
CREATE TABLE Students (
    StudentID INT,
    CourseID INT,
    CourseName VARCHAR(100),
    InstructorName VARCHAR(100)
);
--Resolve anomalies by normalizing into thress tables
CREATE TABLE COURSE(
  CourseID INT PRIMARY KEY,
  CourseName VARCHAR(100)
);

CREATE TABLE Instructors(
  InstructorID INT PRIMARY KEY,
  InstructorNme VARCHAR(100)
);

CREATE TABLE StudentCourses(
  StudentID INT,
  CourseID INT,
  InstructorID INT,
  PRIMARY KEY (StudentID,CourseID),
  FOREIGN KEY(CourseID) References COURSE(CourseID),
  FOREIGN KEY(InstructorID) References Students(InstructorID)
);