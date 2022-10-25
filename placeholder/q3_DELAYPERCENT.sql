SELECT s.CompanyName, ROUND(COUNT(CASE WHEN o.ShippedDate > o.RequiredDate THEN 1 END) * 100.0 / count(*), 2) percentage 
FROM Shipper s 
JOIN 'Order' o ON s.Id = o.ShipVia 
GROUP BY s.Id 
ORDER BY percentage desc;
