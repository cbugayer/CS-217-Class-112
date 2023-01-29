-- query1
SELECT COUNT(OrderNumber)
FROM Employees
NATURAL JOIN Orders
WHERE EmpFirstName = 'Mary'
AND EmpLastName =  'Thompson';

-- query2
SELECT SUM(QuotedPrice * QuantityOrdered)
FROM Customers 
NATURAL JOIN Orders
NATURAL JOIN Order_Details
WHERE CustFirstName = 'Alaina' 
AND CustLastName = 'Hallmark';

-- query3
SELECT CustState, COUNT(CustomerID)
FROM Customers 
GROUP BY CustState
ORDER BY COUNT(CustomerID)
DESC LIMIT 1;

-- query4
SELECT VendName, VendState
FROM Vendors
NATURAL JOIN Product_Vendors
NATURAL JOIN Products
WHERE ProductName = 'Cosmic Elite Road Warrior Wheels';

-- query5
SELECT CustomerID, CustFirstName, COUNT(OrderNumber)
FROM Customers 
NATURAL JOIN Orders
GROUP BY CustomerID
ORDER BY COUNT(OrderNumber) 
DESC LIMIT 5;
