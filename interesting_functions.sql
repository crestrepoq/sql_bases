/*concat() AND || are de same*/
SELECT (c.FirstName || " " ||c.LastName) AS FullName,c.City,c.Email, COUNT(i.InvoiceId) AS num_invoices
FROM Customers AS c
LEFT JOIN Invoices i
    ON c.CustomerId = i.CustomerId
WHERE FullName LIKE 'Fran%'
GROUP BY FullName
