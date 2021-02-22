/*
INNER JOIN jeyword select records that habe maching values in both tables
interseccion

Inner Join Syntax

Join type is specified (INNER JOIN)
Join condition is in the FROM clause and uses the ON clause
Joining more tables together affects overall database performance
You can join multiple tables, no limit
List all the tables, then define conditions

BEST PRACTICES
- Make sure ypu are pre-qualifying names
- Do not make unnecessary joins
- Think about the type of join you are making
How are you connecting records?
*/

SELECT suppliers.company_name
,product_name
,unit_price
FROM Suppliers
INNER JOIN products
    ON Suppliers.supplierid = Products.supplierid

SELECT o.OrderID, c.CompanyName, e.LastName
FROM ((Orders o 
    INNER JOIN Customers c 
        ON o.CustomerID = c.CustomerID)
        INNER JOIN Employees e 
            ON o.EmployeeID = e.EmployeeID);