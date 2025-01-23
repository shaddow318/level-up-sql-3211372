-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

SELECT cust.* FROM Customers cust WHERE Email = 'atapley2j@kinetecoinc.com';
SELECT * FROM AnniversaryInvites;

INSERT INTO AnniversaryInvites(
AnniversaryInviteID
, CustomerID
, PartySize
)
SELECT
1
, 92
, 3
;

SELECT * FROM Customers WHERE Email = 'atapley2j@kinetecoinc.com';
SELECT * FROM AnniversaryInvites;