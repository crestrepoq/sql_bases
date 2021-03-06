/*
What is a Union?
The UNION operator is used to combine the result-set of two or more SELECT statements

Each SELECT statement within UNION must have the same number of columns

Columns must have similar data types

The columns in each SELECT statement must be in the same order
*/

SELECT column_name (s)
FROM table1
UNION
SELECT column_name(s)
FROM table2;

---

SELECT City, Country
FROM Customers
WHERE Country = 'Germany'
UNION
SELECT City, Country
FROM Suppliers
WHERE Country='Germany'
ORDER BY City;
