/* WHERE clause with AND, OR and NOT operators */
-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition1 AND condition2 AND condition3 ...;

-- AND
SELECT *
FROM Students
WHERE FirstName = "Juan" AND LastName = "Brian"

-- OR
SELECT * 
FROM Students
WHERE FirstName='Juan' OR FirstName='Brian'

-- NOT
SELECT * 
FROM Students
WHERE NOT FirstName='Juan'


-- Combining AND, OR & NOT
SELECT * 
FROM Students
WHERE FirstName='Juan' AND (Education='MMD' OR Education='DM');

