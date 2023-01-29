-- query1
SELECT RecipeTitle, Preparation, Notes 
FROM Recipes
LIMIT 6;

-- query2
SELECT IngredientName 
FROM Ingredients 
WHERE IngredientName 
LIKE 'V%';

-- query3
SELECT COUNT(*) 
FROM Ingredients;

-- query4
SELECT COUNT(*)
FROM Ingredient_Classes;

-- query5
SELECT COUNT(*)
FROM Ingredients
WHERE IngredientClassID = 19;