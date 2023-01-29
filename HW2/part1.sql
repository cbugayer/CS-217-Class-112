-- query1
SELECT RecipeID, RecipeTitle 
FROM Recipe_Classes 
NATURAL JOIN Recipes
NATURAL JOIN Recipe_Ingredients
WHERE RecipeClassDescription = 'Main course'
GROUP BY RecipeID 
HAVING COUNT(IngredientID) >= 5;

-- query2
SELECT RecipeTitle
FROM Recipes 
NATURAL JOIN Recipe_Ingredients
NATURAL JOIN Measurements
WHERE MeasurementDescription = 'Clove';

-- query3
SELECT IngredientClassDescription, Count(IngredientID)
FROM Ingredient_Classes 
LEFT NATURAL JOIN Ingredients
GROUP BY Ingredient_Classes.IngredientClassID;