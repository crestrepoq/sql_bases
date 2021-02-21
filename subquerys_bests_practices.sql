/* 
There is no limit to the numbre of subqueries you can have
Perfmormance slows when you nest too deeply
Subquerys selects can only retrieve a single column
*/

/*
Subquery in Subquery
1. Order numbers fot toothbrushes
2. Customer ID's for those ordes
3. Customer information for those orders
*/

SELECT Customer_name, Customer_contact
FROM Customers
WHERE cust_id in
    SELECT customer_id
    FROM Orders
    WHERE order_number IN (SELECT order_number
        FROM OrderItems
            WHERE prod_name = 'Toothbrush');

/*
It's important indenting in subquerys fow knowing where you are
www.poorsql.com
Website will pre-format code
Uses proper indenting
Code is easier to read and troubleshoot
*/

/*
Subqueries for calculations
Ex. Total number of ordes placed by every customer
*/

SELECT COUNT (*) AS Orders
FROM Orders
WHERE Customer_id = '143569'

SELECT Customer_name
    ,customer_state
    ,(SELECT COUNT (*) AS orders
    FROM Orders
    WHERE Orders.customer_id = Customer.customer_id) AS orders
FROM Customers
ORDER BY Customer_name

