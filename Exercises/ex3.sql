-- SELECT IngredientName
-- FROM Ingredients 
-- LEFT JOIN Recipe_Ingredients 
-- ON Ingredients.IngredientID = Recipe_Ingredients.IngredientID
-- WHERE RecipeID IS NULL;

-- SELECT RecipeClassDescription, COUNT(RecipeID) 
-- FROM Recipe_Classes 
-- LEFT JOIN Recipes 
-- ON Recipe_Classes.RecipeClassID = Recipes.RecipeClassID
-- GROUP BY Recipe_Classes.RecipeClassID;

SELECT ProductName 
FROM Products 
LEFT JOIN Order_Details
ON Products.ProductNumber = Order_Details.ProductNumber
WHERE OrderNumber IS NULL;

SELECT ProductName, OrderNumber, OrderDate
FROM Products 
LEFT JOIN Order_Details 
ON Products.ProductNumber = Order_Details.ProductNumber
LEFT NATURAL JOIN Orders;
