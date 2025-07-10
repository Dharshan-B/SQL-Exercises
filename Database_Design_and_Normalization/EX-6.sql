--6.Designing a Junction Table for Many-to-Many Relationships

--Write a SQL query to design a junction table for a many-to-many relationship.
-- Tables representing entities in a many-to-many relationship.
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100)
);

--Junction Table
CREATE TABLE STUDENTCourses(
  StudentID INT,
  CourseID INT,
  PRIMARY KEY (StudentID,CourseID),
  FOREIGN KEY (StudentID) References Students(StudentID),
  FOREIGN KEY(CourseID) References Courses(CourseID)
);