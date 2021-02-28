/*
What is a Case Statement

Mimics if-then-else statement found in most programming languages

Can be used in SELECT, INSERT, UPDATE, and DELETE statements

CASE
WHEN C1 THEN E1
WHEN C2 THEN E2
...
ELSE [result else]
END
*/

CASE input_expression
    WHEN when_expression THEN result_expression [...n]
    [ ELSE else_result_expression ]
END

/*
Simple Case Statement
*/

SELECT
employeeid
,Firstname
,Lastname
,city
,CASE City 
    WHEN 'Calgary' THEN 'Calgary'
ELSE 'Other'
    END Calgary
FROM Employees
ORDER BY LastName,FirstName;

/*
Search Case Statement

CASE WHEN Boolean_expression
THEN result_expression [...n]
[ ELSE else_result_expression ]
END
*/

SELECT
trackid
,LastName
,bytes
,CASE
WHEN bytes < 300000 THEN 'small'
WHEN bytes >= 300001 AND bytes <= 500000 THEN 'medium'
WHEN bytes >= 500001 THEN 'large'
ELSE 'Other'
END bytescategory
FROM tracks;

