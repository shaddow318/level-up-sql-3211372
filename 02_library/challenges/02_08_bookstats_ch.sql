-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT
    Published
  , (COUNT(Published)) AS PublishedCount
FROM
  (
  SELECT DISTINCT
      Title
    , Published
  FROM
    Books
  ) AS 'BooksShortlist'
GROUP BY Published
ORDER BY PublishedCount DESC
;

SELECT
    bks.Title
  , (COUNT(bks.Title)) AS CheckoutCount
FROM
  Books bks
  JOIN Loans lns
    ON bks.BookID = lns.BookID
GROUP BY Title
ORDER BY CheckoutCount DESC
LIMIT 5
;