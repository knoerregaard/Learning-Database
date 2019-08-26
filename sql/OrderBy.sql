/*
OrderBy is used to sort the result-set in ascending or decending order

Syntax
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;
*/ 

-- DESC
SELECT *
FROM Students
ORDER BY Education DESC;

-- ASC
SELECT *
FROM Students
ORDER BY Education ASC;

-- Two columns ASC and DESC
SELECT * 
FROM Students
ORDER BY Education ASC, LastName DESC;