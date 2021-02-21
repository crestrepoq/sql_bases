/*
AGGREGATE FUNCTIONS

AVG() Averages a column of values
COUNT() Counts the number of values
MIN() Finds the minimum value
MAX() Finds the maximum value
SUM() Sums the column values
*/

SELECT AVG(UnitPrice) AS avg_price
FROM products

/*contar incluyendo nulos*/
SELECT COUNT(*) AS 
    total_customers
FROM Customers;

/*contar sin incluir nulos*/
SELECT COUNT(CustomerID) AS 
    total_customers
FROM Customers

SELECT MAX(UnitPrice) AS max_prod_price
FROM products

SELECT MAX(UnitPrice) AS 
    max_prod_price,
MIN(UnitPrice) AS 
    min_prod_price
FROM products

SELECT SUM(UnitPrice) AS 
    total_prod_price
FROM products

SELECT SUM(UnitPrice*UnitsInStock) AS 
    total_price
FROM products
WHERE SupplierID = 23;

/*
USING DISTINCT
*/

SELECT COUNT(DISTINCT CustomerID)
FROM Customers