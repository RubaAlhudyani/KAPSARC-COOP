-- b. Data Track: Load the data into your preferred database (postgres/mongo)

-- Create a table 
CREATE DATABASE AssesmentDB;
USE AssesmentDB;

-- Read Data From Table
Select * from crudeoildaily;
Select * from crudeoilweekly;
Select * from crudeoildaily;
Select * from crudeoildaily;

-- Create new record: 
INSERT INTO CrudeOilDaily (ProductByArea, _4Dec23, _5Dec23, _6Dec23)
VALUES ('NewRecord', 72.73, 71.95, 68.98);

-- Read Data From Table
Select * from crudeoildaily
where ViewHistory='1987-2023' || ProductbyArea = 'Mont Belvieu, Texas';

SELECT AVG('12/4/2023') AS AvgPrice
FROM crudeoilweekly
WHERE ProductbyArea = 'U.S. Gulf Coast' AND ViewHistory = '2006-2023' AND '12/4/2023' IS NOT NULL;

-- Update The Table
SET SQL_SAFE_UPDATES = 0;
UPDATE CrudeOilDaily
SET _4Dec23 = 70,
    _5Dec23 = 71,
    _6Dec23 = 65
WHERE ProductByArea = 'NewRecord';
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM CrudeOilDaily
WHERE ProductByArea = 'NewRecord';
SET SQL_SAFE_UPDATES = 1;