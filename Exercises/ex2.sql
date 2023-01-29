SELECT RecipeTitle FROM 
Recipes NATURAL JOIN Recipe_Ingredients
GROUP BY RecipeID
ORDER BY COUNT(IngredientID) DESC LIMIT 1;

SELECT RecipeSeqNo, Amount, 
MeasurementDescription, IngredientName
FROM Recipes NATURAL JOIN Recipe_Ingredients 
NATURAL JOIN Measurements JOIN Ingredients ON
Ingredients.IngredientID = Recipe_Ingredients.IngredientID
WHERE RecipeTitle = 'Roast Beef';

SELECT Major, COUNT(*) FROM Majors 
JOIN Students ON Majors.MajorID = Students.StudMajor 
WHERE Major IN ('Art', 'Music')
GROUP BY Major 