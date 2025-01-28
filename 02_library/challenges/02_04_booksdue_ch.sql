-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT
    lns.DueDate
  , bks.Title
  , pat.FirstName
  , pat.Email
  , lns.ReturnedDate
FROM
  Patrons pat
  JOIN Loans lns
    ON pat.PatronID = lns.PatronID
  JOIN Books bks
    ON lns.BookID = bks.BookID
WHERE
  lns.DueDate = '2022-07-13'
  AND ReturnedDate IS NULL
  ;