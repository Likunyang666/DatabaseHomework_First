SELECT Id, OrderDate, PrevOrderDate, round(julianday(OrderDate) - julianday(PrevOrderDate), 2) 
FROM 
(SELECT Id, OrderDate, lag(OrderDate, 1, OrderDate) OVER (ORDER BY OrderDate) PrevOrderDate
FROM 'Order'
WHERE CustomerId = 'BLONP'
ORDER BY OrderDate
LIMIT 10)
