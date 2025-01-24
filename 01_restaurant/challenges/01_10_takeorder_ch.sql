-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.
SELECT 
FirstName
, LastName
, Address
, CustomerID
FROM 
Customers
WHERE
FirstName = 'Loretta'
AND LastName = 'Hundey'
AND Address = '6939 Elka Place'
;

SELECT
*
FROM
Orders
WHERE
CustomerID = 70
ORDER BY OrderDate DESC;

INSERT INTO Orders
(
CustomerID
, OrderDate
)
VALUES(
70
, '2022-09-20 14:00:00'
);

SELECT
*
FROM
Orders
WHERE
CustomerID = 70
ORDER BY OrderDate DESC;

SELECT
*
FROM
Dishes
WHERE
Name IN(
'House Salad'
, 'Mini Cheeseburgers'
, 'Tropical Blue Smoothie'
)
;

INSERT INTO
OrdersDishes
(
OrderID
, DishID
)
SELECT
1001
, DishID
FROM
Dishes
WHERE
Name IN(
'House Salad'
, 'Mini Cheeseburgers'
, 'Tropical Blue Smoothie'
)
;

SELECT
*
FROM
OrdersDishes
WHERE
OrderID = 1001
;

SELECT
SUM((SELECT Price
FROM Dishes dsh
WHERE dsh.DishID = ods.DishID)) AS 'Total Order Cost'
FROM
OrdersDishes ods
WHERE
OrderID = 1001
;