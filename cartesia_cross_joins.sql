/*
Cartesian (Cross) Join
Each row from the first table joins with all the rows of another table
It is not matching with anything, no common key 
Not frecuently user
Computationally taxing (Es computacionalmente pesado)
"Will return products with the incorrect wendor or no vendor at all"
*/

SELECT product_name
,unit_price
,company_name
FROM suppliers CROSS JOIN products;
