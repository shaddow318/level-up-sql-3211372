-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

SELECT
    bks.Title
  , bks.Barcode
  , lns.ReturnedDate
FROM
  Books bks
  JOIN Loans lns
    ON bks.BookID = lns.BookID
WHERE
  bks.Barcode IN
    (
      6435968624
    , 5677520613
    , 8730298424
    )
  AND ReturnedDate IS NULL
;

SELECT
    bks.Title
  , bks.Barcode
  , lns.ReturnedDate
FROM
  Books bks
  JOIN Loans lns
    ON bks.BookID = lns.BookID
WHERE
  bks.Barcode IN
    (
      6435968624
    , 5677520613
    , 8730298424
    )
ORDER BY ReturnedDate DESC
;

UPDATE Loans
SET
  ReturnedDate = '2022-07-05'
FROM
  Books bks
  JOIN Loans lns
    ON bks.BookID = lns.BookID
WHERE
  bks.Barcode IN
    (
      6435968624
    , 5677520613
    , 8730298424
    )
  AND lns.ReturnedDate IS NULL
;

SELECT
    bks.Title
  , bks.Barcode
  , lns.ReturnedDate
FROM
  Books bks
  JOIN Loans lns
    ON bks.BookID = lns.BookID
WHERE
  bks.Barcode IN
    (
      6435968624
    , 5677520613
    , 8730298424
    )
  AND ReturnedDate IS NULL
;

SELECT
    bks.Title
  , bks.Barcode
  , lns.ReturnedDate
FROM
  Books bks
  JOIN Loans lns
    ON bks.BookID = lns.BookID
WHERE
  bks.Barcode IN
    (
      6435968624
    , 5677520613
    , 8730298424
    )
ORDER BY ReturnedDate DESC
;