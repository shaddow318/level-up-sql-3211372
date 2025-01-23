-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT cust.FirstName, cust.LastName, rsv.*
FROM Customers cust
JOIN Reservations rsv
ON cust.CustomerID = rsv.CustomerID
WHERE cust.FirstName LIKE '%Norby%'
ORDER BY rsv.Date DESC;

DELETE FROM Reservations WHERE ReservationID = 2000;

SELECT cust.FirstName, cust.LastName, rsv.*
FROM Customers cust
JOIN Reservations rsv
ON cust.CustomerID = rsv.CustomerID
WHERE cust.FirstName LIKE '%Norby%'
ORDER BY rsv.Date DESC;