-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT
    ptn.FirstName
  , ptn.LastName
  , ptn.Email
  , (COUNT(lns.PatronID)) AS 'BookCheckoutCount'
FROM
  Patrons ptn
  JOIN Loans lns
    ON ptn.PatronID = lns.PatronID
GROUP BY ptn.Email
ORDER BY BookCheckoutCount
LIMIT 5;