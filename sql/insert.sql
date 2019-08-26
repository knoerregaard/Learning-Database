/*  INSERT is used to insert values into a table
    
    Syntax
    
    INSERT INTO table_name (column1, column2, column3, ...)
    VALUES (value1, value2, value3, ...);
*/

-- INSERT
INSERT INTO Campus (CampusName, StreetName, StreetNumber, Entrance, City, PostalCode, PhoneNumber)
VALUES('Stanford', 'Stanford Street', 1,'A', 'San Francisco', 11223, 41770410);

-- INSERT with NULL
INSERT INTO Campus (CampusName, StreetName, StreetNumber, Entrance, City, PostalCode, PhoneNumber)
VALUES('Ofxord', 'Oxford Street', 1, 'A', 'Oxford', 11224 ,41770410);
