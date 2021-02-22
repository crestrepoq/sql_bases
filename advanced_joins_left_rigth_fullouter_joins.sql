/*
SQL Lite only does Left Joins
Other database management systems use all joins

LEFT JOIN 
Returns all records from the left table (table1), and the matched records from the right table (table2)
The result is NULL from the right side, if there is no match

RIGHT JOIN
Returns all records from the right table (table2), and the matched records from the left table (table1)
The result is NULL from the left side, when there is no match

FULL OUTER JOIN
Return all records when there is a match in either left (table1) or right (table2) table records
"Give me everything"

Difference between right and left is the order the tables are relating
Left joins can be turned into right joins by reversing the order of the tables 
*/

/*Left Joins*/

SELECT C.CustomerName, O.OrderID
FROM Customers Customers
LEFT JOIN Orders O
    ON C.CustomerID = O.CustomerID
ORDER BY C.CustomerName;

/*Right Joins*/

SELECT Orders.OrderID,
Employees.LastName,
Employees.FirstName

FROM Orders

RIGHT JOIN Employees
    ON Orders.EmployeeID = Employees.EmployeeID

ORDER BY Orders.OrderID;

/*FULL OUTER Join*/

SELECT Customers.CustomerName,
Orders.OrderID

FROM Customers

FULL OUTER JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID

ORDER BY Customers.CustomerName;