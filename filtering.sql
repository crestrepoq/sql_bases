SELECT column_name, column_name
FROM table_name
WHERE column_name operator value;

/*Operators
= Equal
<> Not equal. Note: In some versions of SQL this operatos may be written as !=
> Grater than
< Less than
>= Greater than or equal
<= Less than or equal
BETWEEN Between an inclusive range
IN NULL Is a null value
*/


#Mayor o igual
SELECT productName
,UnitPrice
,SupplierID
FROM Products
WHERE UnitPrice >= 75;

#Non Matches
SELECT productName
,UnitPrice
,SupplierID
FROM Products
WHERE ProductName <> 'AliceMutton';

#Range_of_values
SELECT productName
,UnitPrice
,SupplierID
,UnitInStock
FROM Products
WHERE UnitInStock BETWEEN 15 AND 80;

#No_value
SELECT productName
,UnitPrice
,SupplierID
,UnitInStock
FROM Products
WHERE ProductName IS NULL;

