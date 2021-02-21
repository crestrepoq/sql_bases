/*
GROUP BY
Can contain multiple columns

HAVING
WHERE does not work for groups
WHERE filters on rows
Instead use HAVING clause to filter for groups
*/

SELECT
Region
,COUNT(CustomerID) AS total_customers
FROM Customers
GROUP BY Region;

SELECT
CustomerIS
,COUNT(*) AS orders
FROM orders
GROUP BY CustomerID
HAVING COUNT(*) >= 2;

SELECT SupplierID
,COUNT(*) AS Num_Prod
FROM products
WHERE UnitPrice >= 4
GROUP BY SupplierID
HAVING COUNT(*) >= 2;