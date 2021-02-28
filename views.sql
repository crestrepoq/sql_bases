/*
Overview of views

A stored query

Can add or remove columns without changing schema

Use it to encapsulate queries

The view will be removed after database connection has ended

CREATE [TEMP] VIEW [IF NOT EXISTS]
view_name(column-name-list)
AS select-statement;
*/

CREATE VIEW my_view
AS
SELECT 
r.regiondescription
,t.territorydescription
,e.Lastname
,e.Firstname
,e.Hiredate
,e.Reportsto
FROM Region r 
INNER JOIN Territories t on r.regionid = t.regionid
INNER JOIN Employeesterritories et on t.TerritoryID = et.TerritoryID
INNER JOIN Employees e on et.employeeid = e.EmployeeID

/*
For call view created
*/
SELECT *
FROM my_view
DROP VIEW my_view;

SELECT count(territorydescription)
,Lastname
,Firstname
FROM my_view
GROUP BY Lastname, Firstname;

