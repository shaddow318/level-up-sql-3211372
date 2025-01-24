-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT
*
FROM
Dishes
WHERE
Name = 'Quinoa Salmon Salad'
;

SELECT
CustomerID
, FirstName
, LastName
, FavoriteDish
FROM
Customers
WHERE
FirstName = 'Cleo'
AND LastName = 'Goldwater'
;

UPDATE Customers
SET FavoriteDish =
 (SELECT
 DishID
 FROM
 Dishes
 WHERE
 Name = 'Quinoa Salmon Salad'
 )
WHERE
FirstName = 'Cleo'
AND LastName = 'Goldwater'
;

SELECT
CustomerID
, FirstName
, LastName
, FavoriteDish
FROM
Customers
WHERE
FirstName = 'Cleo'
AND LastName = 'Goldwater'
;