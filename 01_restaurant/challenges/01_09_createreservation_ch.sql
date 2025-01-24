-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)
SELECT * FROM Customers WHERE Email = 'smac@kinetecoinc.com';

INSERT INTO Customers
(
FirstName
, LastName
, Email
)
VALUES
(
'Sam'
, 'McAdams'
, 'smac@kinetecoinc.com'
)
;

UPDATE Customers
SET Phone = '555-555-1212'
WHERE Email = 'smac@kinetecoinc.com';

SELECT * FROM Customers WHERE Email = 'smac@kinetecoinc.com';

INSERT INTO Reservations
(
CustomerID
, Date
, PartySize
)
SELECT 
CustomerID
, '2022-08-12 18:00:00'
, 5  
FROM Customers 
WHERE Email = 'smac@kinetecoinc.com'
;

SELECT
cst.FirstName
, cst.LastName
, rsv.*
FROM 
Customers cst JOIN
Reservations rsv
ON cst.CustomerID = rsv.CustomerID
WHERE
Email = 'smac@kinetecoinc.com';