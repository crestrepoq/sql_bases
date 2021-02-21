/* Need to know the region each customer is from who has had an order with freight over 100*/
SELECT
CustomerId
,CompanyName
,Region
FROM Customers
WHERE CustomerId in (SELECT
                    CustomerId
                    FROM Orders
                    WHERE Freight >100)