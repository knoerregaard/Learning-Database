
-- SELECT statement is used to retrieve data from the database
-- The statement will return a result set
-- Prerequisite: EducationDB


/* Simple SELECT statements */
-- SELECT statement that returns a value of type string
SELECT 'Hello World'

-- SELECT statement that returns multiple columns
SELECT 'Hello', 'World'

-- SELECT statement that returns value and a named column name
SELECT 'Hello World' as MyTextField

-- SELECT statement that returns the sum of two numbers
SELECT 1+2

-- SELECT statement that returns the a division
SELECT 10/2

-- SELECT statement that returns a string plus a number
SELECT 1 + '5'

-- SELECT statement that returns the date in the following format: yyyy-mm-dd hh:mm:ss
SELECT getdate()

/* Introducing FROM and WHERE clause */
-- SELECT statement that returns a list of campuses from EducationDB
SELECT *
FROM Campus

-- SELECT statement that return 'CampusName', 'StreetName' and 'StreetNumber' of all the campuses
SELECT CampusName, StreetName, StreetNumber
FROM Campus

-- SELECT statement that returns CampusName, StreetName, StreetNumber but where the name of the campus is 'Skive'
SELECT CampusName, StreetName, StreetNumber 
FROM Campus
WHERE CampusName = 'Skive'

-- SELECT statement that returns all distinct rows in table Students
SELECT DISTINCT name
FROM Students

