-- creates an ampty database
--drop table Campus;
--drop table Educations;
--drop table Employees;
--drop table Students;
CREATE DATABASE EducationDB;

USE EducationDB;

CREATE TABLE Campus(
    CampusName NVARCHAR(255) PRIMARY KEY,
    StreetName NVARCHAR(50),
    StreetNumber INT,
    Entrance NVARCHAR(10),
    City NVARCHAR(100),
    PostalCode INT,
    PhoneNumber BIGINT
)

CREATE TABLE Educations(
    [Name] NVARCHAR(100) PRIMARY KEY,
    Description NVARCHAR(255),
    ECTS INT,
    CampusName NVARCHAR(255), 
    FOREIGN KEY (CampusName) REFERENCES Campus(CampusName)
)

CREATE TABLE Employees(
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(100),
    LastName NVARCHAR(100),
    [Role] NVARCHAR(100),
    EducationName NVARCHAR(100),
    FOREIGN KEY (EducationName) REFERENCES Educations(Name)
)

CREATE TABLE Students(
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(100),
    LastName NVARCHAR(100),
    EducationName NVARCHAR(100),
    FOREIGN KEY (EducationName) REFERENCES Educations(Name)
)

/* INSERT Statements */

-- Campus
INSERT INTO Campus VALUES('Skive', 'Arvikarvej', 2, 'a', 'Skive', 7800, 41770410);

-- Educations
INSERT INTO Educations VALUES('Programming', 'Computer Science', 150, 'Skive')
INSERT INTO Educations VALUES('Service', 'Human Study', 150, 'Skive')
INSERT INTO Educations VALUES('Production', 'Workshop', 150, 'Skive')
INSERT INTO Educations VALUES('Media', 'SOME', 150, 'Skive')

INSERT INTO Employees VALUES(1234, 'Jean', 'Deacon', 'Lecturer', 'Programming')
INSERT INTO Employees VALUES(1334, 'Mujtaba', 'Blanchard', 'Lecturer', 'Programming')
INSERT INTO Employees VALUES(1434, 'May', 'Downs', 'Lecturer', 'Programming')
INSERT INTO Employees VALUES(1534, 'Matylda', 'Pena', 'Lecturer', 'Programming')
INSERT INTO Employees VALUES(1634, 'Cataleya', 'Hester', 'Lecturer', 'Programming')
INSERT INTO Employees VALUES(1734, 'Jaydan', 'Hopkins', 'Secretary', NULL)
INSERT INTO Employees VALUES(1834, 'Maddison', 'Whittaker', 'Secretary', NULL)
INSERT INTO Employees VALUES(1934, 'Evie-Grace', 'Fellows', 'Boss', NULL)
INSERT INTO Employees VALUES(2034, 'Grace', 'Joy', 'Cleaner', NULL)

INSERT INTO Students VALUES(2100, 'Frank', 'Sanders', 'Programming')
INSERT INTO Students VALUES(2101, 'Zahrah', 'Bray', 'Programming')
INSERT INTO Students VALUES(2102, 'Viaan', 'Flynn', 'Programming')
INSERT INTO Students VALUES(2103, 'Gordon', 'Munoz', 'Programming')
INSERT INTO Students VALUES(2104, 'Maxim', 'Hahn', 'Programming')
INSERT INTO Students VALUES(2105, 'Rabia', 'Hays', 'Programming')
INSERT INTO Students VALUES(2106, 'Tina', 'Harmon', 'Programming')
INSERT INTO Students VALUES(2107, 'Dollie', 'Wiley', 'Programming')
INSERT INTO Students VALUES(2108, 'Naeem', 'Bruce', 'Programming')
INSERT INTO Students VALUES(2109, 'Kynan', 'Garcia', 'Programming')
INSERT INTO Students VALUES(2110, 'Garcia', 'Wagstaff', 'Programming')
INSERT INTO Students VALUES(2111, 'Bethany', 'Pineda', 'Service')
INSERT INTO Students VALUES(2112, 'Gemma', 'Bernard', 'Service')
INSERT INTO Students VALUES(2113, 'Tonya', 'Sweet', 'Service')
INSERT INTO Students VALUES(2114, 'Sweet', 'Cooper', 'Service')
INSERT INTO Students VALUES(2115, 'Ria', 'Cooper', 'Service')
INSERT INTO Students VALUES(2116, 'Archibald', 'Alvarez', 'Service')
INSERT INTO Students VALUES(2117, 'Emmett', 'Emmett', 'Service')
INSERT INTO Students VALUES(2118, 'Aadil', 'Sherman', 'Service')
INSERT INTO Students VALUES(2119, 'Kya', 'Kya', 'Service')
INSERT INTO Students VALUES(2120, 'Sumaiya', 'Shepard', 'Service')
INSERT INTO Students VALUES(2121, 'Ellie-Rose', 'Horner', 'Service')
INSERT INTO Students VALUES(2122, 'Darcey', 'Darcey', 'Production')
INSERT INTO Students VALUES(2123, 'Kaci', 'Gould', 'Production')
INSERT INTO Students VALUES(2124, 'Charlene', 'Charlene', 'Production')
INSERT INTO Students VALUES(2125, 'Humza', 'Reese', 'Production')
INSERT INTO Students VALUES(2126, 'Sadie', 'Patton', 'Production')
INSERT INTO Students VALUES(2127, 'Sadie', 'Patton', 'Production')
INSERT INTO Students VALUES(2128, 'Ivor', 'Petty', 'Production')
INSERT INTO Students VALUES(2129, 'Mohsin', 'Neville', 'Production')
INSERT INTO Students VALUES(2130, 'Aneesa', 'Roman', 'Production')
INSERT INTO Students VALUES(2131, 'Amar', 'Walls', 'Production')
INSERT INTO Students VALUES(2132, 'Aliza', 'Solomon', 'Production')
INSERT INTO Students VALUES(2133, 'Patrick', 'Wallis', 'Media')
INSERT INTO Students VALUES(2134, 'Franklin', 'Branch', 'Media')
INSERT INTO Students VALUES(2135, 'Kylie', 'Brookes', 'Media')
INSERT INTO Students VALUES(2136, 'Karol', 'Bassett', 'Media')
INSERT INTO Students VALUES(2137, 'Ayda', 'Taylor', 'Media')
INSERT INTO Students VALUES(2138, 'Warren', 'Hopkins', 'Media')
INSERT INTO Students VALUES(2139, 'Francis', 'Irving', 'Media')
INSERT INTO Students VALUES(2140, 'Debbie', 'Lin', 'Media')
INSERT INTO Students VALUES(2141, 'Lola-Mae', 'Barry', 'Media')
INSERT INTO Students VALUES(2142, 'Naya', 'Haines', 'Media')
INSERT INTO Students VALUES(2143, 'Ember', 'Wilde', 'Media')
INSERT INTO Students VALUES(2144, 'Umayr', 'Walter', 'Media')
INSERT INTO Students VALUES(2145, 'Maximilian', 'Lyon', 'Media')
INSERT INTO Students VALUES(2146, 'Aiysha', 'Zimmerman', NULL)
INSERT INTO Students VALUES(2147, 'Eman', 'Todd', NULL)
INSERT INTO Students VALUES(2148, 'Noah', 'Olson', NULL)
INSERT INTO Students VALUES(2149, 'Zaynab', 'Douglas', NULL)
INSERT INTO Students VALUES(2150, 'Juliet', 'Fuentes', NULL)

