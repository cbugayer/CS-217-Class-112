-- SELECT CustomerID FROM Customers 
-- EXCEPT
-- SELECT CustomerID FROM Customers 
-- NATURAL JOIN Orders
-- NATURAL JOIN Order_Details
-- NATURAL JOIN Products
-- WHERE ProductName LIKE '%Watch%';

SELECT RecipeTitle FROM
(SELECT DISTINCT RecipeID FROM Recipe_Ingredients
NATURAL JOIN Measurements
WHERE MeasurementDescription='Teaspoon') AS t
JOIN Recipes ON t.RecipeID=Recipes.RecipeID;

SELECT Recipetitle
FROM Recipes JOIN Recipe_Ingredients ON 
Recipe_Ingredients.RecipeID = Recipes.RecipeID
JOIN Measurements ON Measurements.MeasureAmountID = 
Recipe_Ingredients.MeasureAmountID
WHERE Measurements.MeasurementDescription = 'Teaspoon';