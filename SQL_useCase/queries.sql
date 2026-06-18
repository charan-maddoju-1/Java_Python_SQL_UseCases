SELECT * from Partners;
SELECT * from Shipments;
SELECT * from DeliveryLogs;



--Delayed Shipments
SELECT ShipmentID, PartnerID, PromisedDate, ActualDeliveryDate
FROM Shipments
WHERE ActualDeliveryDate > PromisedDate;


--Performance Ranking
SELECT p.PartnerName,
    COUNT(CASE WHEN s.Status = 'Delivered' THEN 1 END) AS SuccessfulDeliveries,
    COUNT(CASE WHEN s.Status = 'Returned' THEN 1 END) AS ReturnedDeliveries,
    ROUND(100.0 * COUNT(CASE WHEN s.Status = 'Delivered' THEN 1 END) /COUNT(*),2) AS SuccessRate
FROM Partners p
JOIN Shipments s ON p.PartnerID = s.PartnerID
GROUP BY p.PartnerName
ORDER BY SuccessRate DESC ,SuccessfulDeliveries-ReturnedDeliveries DESC;


--Most Popular Destination (Last 30 Days)
SELECT DestinationCity, COUNT(*) AS TotalOrders
FROM Shipments
WHERE OrderDate >= DATE('now', '-30 days')
GROUP BY DestinationCity
ORDER BY TotalOrders DESC
LIMIT 1;


--Partner Scorecard
SELECT p.PartnerName,
    COUNT(s.ShipmentID) AS TotalShipments,
    COUNT(CASE 
        WHEN s.ActualDeliveryDate > s.PromisedDate THEN 1 
    END) AS DelayedShipments,
    ROUND( COUNT(CASE WHEN s.Status = 'Delivered' THEN 1 END) * 100.0 / COUNT(s.ShipmentID), 2) AS SuccessRate
FROM Partners p
JOIN Shipments s ON p.PartnerID = s.PartnerID
GROUP BY p.PartnerName
ORDER BY DelayedShipments ASC;


