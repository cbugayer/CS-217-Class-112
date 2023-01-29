-- SELECT DISTINCT IngredientName FROM Ingredients LEFT JOIN Recipe_Ingredients
-- ON Ingredients.IngredientID=Recipe_Ingredients.IngredientID
-- WHERE RecipeID IS NULL;

-- SELECT RecipeClassDescription, COUNT(RecipeID) AS RecipeCount
-- FROM Recipe_Classes LEFT NATURAL JOIN Recipes GROUP BY RecipeClassID; 

SELECT Products.ProductNumber, ProductName FROM Products LEFT NATURAL JOIN Order_Details 
WHERE Order_Details.OrderNumber IS NULL;

SELECT Products.ProductNumber, ProductName, OrderDate FROM Products 
LEFT NATURAL JOIN (Order_Details NATURAL JOIN Orders);