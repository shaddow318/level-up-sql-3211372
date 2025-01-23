-- Create a table in the database to store customer
-- responses to our anniversary invitation.

-- Associate a customer's ID number with the number of people
-- they plan to bring in their party.

-- Hint: SQLite offers the INTEGER and REAL datatypes

CREATE TABLE AnniversaryInvites(
AnniversaryInviteID INT NOT NULL,
CustomerID INT NOT NULL,
PartySize INT,
PRIMARY KEY (AnniversaryInviteID),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);