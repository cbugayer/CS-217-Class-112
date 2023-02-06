--query1
SELECT ProductNumber, ProductName,
CASE WHEN CategoryDescription = 'Clothing' 
THEN MAX(WholesalePrice) 
ELSE MIN(WholesalePrice) END 
AS 'WholesalePrice'
FROM Products NATURAL JOIN Product_Vendors 
NATURAL JOIN Categories
GROUP BY ProductNumber;

--query2
SELECT ProductNumber, ProductName, MIN(WholesalePrice) AS 'WholesalePrice'
FROM Products NATURAL JOIN Product_Vendors 
NATURAL JOIN Categories WHERE CategoryDescription != 'Clothing'
GROUP BY ProductNumber UNION
SELECT ProductNumber, ProductName, MAX(WholesalePrice)
FROM Products NATURAL JOIN Product_Vendors 
NATURAL JOIN Categories 
WHERE CategoryDescription = 'Clothing'
GROUP BY ProductNumber;