-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT
  *
FROM
  Books bk
WHERE
  Title = 'Dracula'
;

SELECT
  bk.Title
, ln.*
FROM
  Books bk
  JOIN Loans ln
    ON bk.BookID = ln.BookID
WHERE
  Title = 'Dracula'
  AND ReturnedDate IS NULL
;

SELECT
  COUNT(bk.BookID) AS 'Available Books'
FROM
  Books bk
WHERE
  Title = 'Dracula'
  AND BookID NOT IN (
    SELECT
        ln.BookID
    FROM
      Books bk
      JOIN Loans ln
        ON bk.BookID = ln.BookID
    WHERE
      Title = 'Dracula'
      AND ReturnedDate IS NULL
      )
;