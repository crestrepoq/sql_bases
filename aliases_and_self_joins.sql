/*
Aliases and Self Joins
Alias to call a variable
Easy to write and read

What is an alias
Sql aliases give a table or a column a temporary name
Make column names more readable
An alias only exists for the duration of the query
*/

SELECT column_name
FROM table_name AS alias_name

SELECT vendor_name
,product_name
,product_price
FROM Vendors, Products
WHERE Vendors.vendor_id = Productos.vendor_id

SELECT vendor_name
,product_name
,product_price
FROM Vendors AS v,Product AS p
WHERE v.vendor_id = p.vendor_id

/*
Self Joins
Ex. Match customers from the same city
Take the table and treat it like two separate tables
Join the original table to itself
*/

SELECT column_name(s)
FROM table1 T1, table2 table2
WHERE condition;

SElECT A.CustomerName AS CustomerName1,
B.CustomerName AS CustomerName2, A.city
FROM Customers A, CustomerID
AND A.City = B.City;

SELECT CONCAT (a.LastName, ', ', a.FirstName) AS Manager
,CONCAT(b.LastName, ', ', b.FirstName) AS 'Direct Reporting'
FROM persons b
INNER JOIN persons a 
    ON a.PersonID = b.ReportsTo
ORDER BY Manager;
