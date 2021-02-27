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




