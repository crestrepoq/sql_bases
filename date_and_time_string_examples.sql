/*
EXAMPLE
*/


/*
STRFTIME
Extract some elements from a string with date values
*/
SELECT Birthdate
,STRFTIME('%Y',Birthdate) AS Year
,STRFTIME('%m',Birthdate) AS Month
,STRFTIME('%d',Birthdate) AS Day
FROM employees

/*
DATE
Compute currente Date
*/
SELECT DATE('now')

/*
Compute Year, Month and Day for the Current Date
*/
SELECT STRFTIME('%Y %m %d', 'now')

/*
Compute the Hour, Minute and Milliseconds from the Current Datetime
*/
SELECT STRFTIME('%Y %m %d', 'now')


/*
Compute age using Birthdate
*/
SELECT Birthdate
,STRFTIME('%Y',Birthdate) AS Year
,STRFTIME('%m',Birthdate) AS Month
,STRFTIME('%d',Birthdate) AS Day
,DATE(('now') - Birthdate) AS Age
FROM employees

/*
A little more complex examples
*/

SELECT e.FirstName
    ,e.LastName
    ,e.HireDate
    ,STRFTIME('%Y',e.HireDate) AS HireYear
    ,STRFTIME('%Y','now') AS ActualYear
    ,subq.WorkingYears
FROM Employees e
LEFT JOIN (SELECT b.EmployeeId
                ,(STRFTIME('%Y','now') - STRFTIME('%Y',b.HireDate)) AS WorkingYears
            FROM Employees b
            WHERE (STRFTIME('%Y','now') - STRFTIME('%Y',b.HireDate)) >= 15) AS subq
    ON e.EmployeeId = subq.EmployeeId
ORDER BY e.LastName ASC

/* Result 
----
+-----------+----------+---------------------+----------+------------+--------------+
| FirstName | LastName | HireDate            | HireYear | ActualYear | WorkingYears |
+-----------+----------+---------------------+----------+------------+--------------+
| Andrew    | Adams    | 2002-08-14 00:00:00 | 2002     | 2021       |           19 |
| Laura     | Callahan | 2004-03-04 00:00:00 | 2004     | 2021       |           17 |
| Nancy     | Edwards  | 2002-05-01 00:00:00 | 2002     | 2021       |           19 |
| Steve     | Johnson  | 2003-10-17 00:00:00 | 2003     | 2021       |           18 |
| Robert    | King     | 2004-01-02 00:00:00 | 2004     | 2021       |           17 |
| Michael   | Mitchell | 2003-10-17 00:00:00 | 2003     | 2021       |           18 |
| Margaret  | Park     | 2003-05-03 00:00:00 | 2003     | 2021       |           18 |
| Jane      | Peacock  | 2002-04-01 00:00:00 | 2002     | 2021       |           19 |
+-----------+----------+---------------------+----------+------------+--------------+
----
*/