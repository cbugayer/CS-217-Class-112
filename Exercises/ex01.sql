SELECT IngredientName FROM Ingredients ORDER BY IngredientName;

SELECT count(*) FROM Recipes WHERE Preparation LIKE '%oven%';

SELECT count(MeasureAmountID) FROM Measurements;

SELECT count(distinct MeasureAmountID) FROM Recipe_Ingredients;

SELECT count(*) FROM Recipes WHERE Notes is NULL;

SELECT RecipeID, count(IngredientID) FROM Recipe_Ingredients GROUP BY RecipeID ORDER BY count(IngredientID) DESC LIMIT 1;
