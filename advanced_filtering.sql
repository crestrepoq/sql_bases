/* In Operator */

SELECT
ProductID
,UnitPrice
,SupplierID
FROM Products
WHERE SupplierID IN (9, 10, 11)

/* OR Operator */
SELECT
ProductName
,ProductID
,UnitPrice
,SupplierID
,ProductName
FROM Products
WHERE ProductName = 'Tofu' OR 'Konbu'

/* OR with AND */

SELECT
ProductID
,UnitPrice
,SupplierID
FROM Products
WHERE SupplierID = 9 OR SupplierID = 11
AND UnitPrice > 15

SELECT
ProductID
,UnitPrice
,SupplierID
FROM Products
WHERE (SupplierID = 9 OR SupplierID = 11)
AND UnitPrice > 15

/* NOT Operator*/

SELECT *
FROM Employees
WHERE NOT City = 'London' AND NOT City = 'Seatlle';