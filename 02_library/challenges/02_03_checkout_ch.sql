-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.
SELECT
    BookID
  , Title
  , Barcode
FROM 
  Books
WHERE
  Barcode IN(
      2855934983
    , 4043822646
  )
;

SELECT
  *
FROM
  Patrons
WHERE
  Email = 'jvaan@wisdompets.com'
;

INSERT INTO
Loans
(
    BookID
  , PatronID
  , LoanDate
  , DueDate
  , ReturnedDate
)
SELECT
  BookID
  ,  (
      SELECT
        PatronID
      FROM
        Patrons
      WHERE
        Email = 'jvaan@wisdompets.com'
    )
  , '2022-08-25'
  , '2022-09-08'
  , NULL
FROM 
  Books
WHERE
  Barcode IN(
      2855934983
    , 4043822646
  )
;

SELECT
 *
FROM
  Loans
WHERE
  BookID IN(
    SELECT
        BookID
    FROM 
      Books
    WHERE
      Barcode IN(
          2855934983
        , 4043822646
      )
  )
  AND
  ReturnedDate IS NULL
;