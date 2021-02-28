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
