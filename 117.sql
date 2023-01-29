SELECT IngredientName FROM Ingredient_Classes 
JOIN Ingredients ON 
Ingredient_Classes.IngredientClassID = 
Ingredients.IngredientClassID
WHERE IngredientClassDescription 
IN ('Meat', 'Seafood');

SELECT IngredientName FROM Ingredient_Classes 
NATURAL JOIN Ingredients
WHERE IngredientClassDescription 
IN ('Meat', 'Seafood');

SELECT IngredientName FROM 
Ingredients, Ingredient_Classes
WHERE Ingredient_Classes.IngredientClassID ==
Ingredients.IngredientClassID AND 
IngredientClassDescription 
IN ('Meat', 'Seafood');





