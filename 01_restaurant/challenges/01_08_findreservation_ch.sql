-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT cust.FirstName, cust.LastName, rsv.*
FROM Customers cust
JOIN Reservations rsv
ON cust.CustomerID = rsv.CustomerID
WHERE
LOWER(cust.LastName) LIKE 'st%'AND 
rsv.PartySize = 4 AND
rsv.Date LIKE '%06%'