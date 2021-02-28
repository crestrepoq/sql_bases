/*
Working with String variables

REtrieve the data in the format you need Client vs server formating

Support Joins

String Functions:
    Concatenate
    Substring
    Trim
    Upper
    Lower
*/

/* Concatenatios
Use ||
(SQL server supports + instead of ||)
*/

SELECT
CompanyName
.ConcatName
,CompanyName || ' ('|| ConcactName||')'
FROM customers

/* Trimming Strings

Trims (remove) the leading or trailing space from a string
TRIM
RTRIM
LTRIM
*/
SELECT TRIM ("  You the best.   ") AS TrimmedString

/* Substring

Returns the specified number of characters from a particular position of a given string

SUBSTR(string name, string position, number of characteres to be returned);
*/

SELECT first_name, SUBSTR(first_name,2,3)
FROM employees
WHERE department_id=60;

/* Upper and Lower
*/

SELECT UPPER(column_name) FROM table_name;
SELECT LOWER(column_name) FROM table_name;
SELECT UCASE(column_name) FROM table_name;


/*
Another more complex examples
*/

SELECT c.CustomerId
    ,c.FirstName || ' ' || c.LastName AS FullName
    ,c.Address
    ,UPPER(c.City || ' ' || c.Country) AS 'City, Country'
FROM Customers c
WHERE c.CustomerId = 16

/* Result
+------------+--------------+---------------------------+-------------------+
| CustomerId | FullName     | Address                   | City, Country     |
+------------+--------------+---------------------------+-------------------+
|         16 | Frank Harris | 1600 Amphitheatre Parkway | MOUNTAIN VIEW USA |
+------------+--------------+---------------------------+-------------------+
*/

-----
SELECT e.FirstName
    ,e.LastName
    ,LOWER(SUBSTR(e.FirstName,1,4)) AS subuser_id1
    ,LOWER(SUBSTR(e.LastName,1,2)) AS subuser_id2
    ,LOWER(SUBSTR(e.FirstName,1,4) || SUBSTR(e.LastName,1,2)) AS user_id
FROM Employees e

/* Result

FirstName | LastName | subuser_id1 | subuser_id2 | user_id |
+-----------+----------+-------------+-------------+---------+
| Andrew    | Adams    | andr        | ad          | andrad  |
| Nancy     | Edwards  | nanc        | ed          | nanced  |
| Jane      | Peacock  | jane        | pe          | janepe  |
| Margaret  | Park     | marg        | pa          | margpa  |
| Steve     | Johnson  | stev        | jo          | stevjo  |
| Michael   | Mitchell | mich        | mi          | michmi  |
| Robert    | King     | robe        | ki          | robeki  |
| Laura     | Callahan | laur        | ca          | laurca 

*/
-----
