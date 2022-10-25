SELECT p.ProductName, c.CompanyName, c.ContactName 
FROM Product p 
JOIN OrderDetail ord ON p.Id = ord.ProductId 
JOIN 'Order' o ON ord.OrderId = o.Id 
JOIN Customer c ON o.CustomerId = c.Id 
WHERE p.Discontinued = 1 
GROUP BY p.Id 
HAVING o.orderDate = min(o.orderDate) 
ORDER BY p.ProductName;
