SELECT IngredientName FROM Ingredients
ORDER BY IngredientName; 

SELECT * FROM Recipes
WHERE Preparation LIKE '%oven%';

SELECT Count(*) FROM Measurements;

SELECT COUNT(DISTINCT MeasureAmountID) FROM Recipe_Ingredients;

SELECT COUNT(*) FROM Recipes WHERE Notes IS NULL;

SELECT RecipeID FROM Recipe_Ingredients 
GROUP BY RecipeID 
ORDER BY COUNT(IngredientID) DESC 
LIMIT 1;