-- query1
SELECT VendCity, VendName 
FROM Vendors
ORDER BY VendCity;

-- query2
SELECT ProductName, RetailPrice*0.95
FROM Products;

-- query3
SELECT VendName, VendStreetAddress
FROM Vendors
ORDER BY VendName;

-- query4
SELECT VendName
FROM Vendors
WHERE VendCity 
IN ('Ballard', 'Bellevue', 'Redmond');

-- query5
SELECT ProductName  
FROM Products 
WHERE RetailPrice > 125 
AND RetailPrice < 800
ORDER BY ProductName;

-- query6
SELECT COUNT(*) 
FROM Vendors
WHERE VendWebPage IS NULL
AND VendEMailAddress IS NULL;

-- query7
SELECT AVG(RetailPrice) 
FROM Products
WHERE ProductName 
LIKE '%Mountain Bike%';

-- query8
SELECT SUM(QuotedPrice*QuantityOrdered)
FROM Order_Details 
WHERE OrderNumber = 8;

-- query9
SELECT VendorID, AVG(DaysToDeliver)
FROM Product_Vendors
GROUP BY VendorID;

-- query10
SELECT COUNT(*)
FROM Customers
WHERE CustState 
IN ('CA', 'OR', 'WA');