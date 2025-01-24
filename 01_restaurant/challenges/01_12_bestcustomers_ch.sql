-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT
cst.FirstName
, cst.LastName
, cst.Email
, COUNT(*) AS 'COUNT'
FROM
  Customers cst
JOIN
  Orders ord
    ON cst.CustomerID = ord.CustomerID
GROUP BY cst.CustomerID
ORDER BY COUNT DESC