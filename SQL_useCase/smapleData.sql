--Partners
INSERT INTO Partners VALUES (1, 'FastExpress');
INSERT INTO Partners VALUES (2, 'QuickShip');
INSERT INTO Partners VALUES (3, 'SpeedX');

--Shipments
INSERT INTO Shipments VALUES
(101, 1, 'Hyderabad', 'Bangalore', DATE('now','-5 days'), DATE('now','-2 days'), DATE('now','-1 days'), 'Delivered'),
(102, 1, 'Hyderabad', 'Chennai', DATE('now','-10 days'), DATE('now','-6 days'), DATE('now','-4 days'), 'Delivered'),
(103, 2, 'Delhi', 'Mumbai', DATE('now','-7 days'), DATE('now','-3 days'), DATE('now','-2 days'), 'Delivered'),
(104, 2, 'Delhi', 'Pune', DATE('now','-6 days'), DATE('now','-2 days'), DATE('now','-1 days'), 'Returned'),
(105, 3, 'Chennai', 'Hyderabad', DATE('now','-4 days'), DATE('now','-2 days'), DATE('now','-3 days'), 'Delivered'),
(106, 3, 'Bangalore', 'Delhi', DATE('now','-3 days'), DATE('now','-1 days'), DATE('now','-1 days'), 'Delivered');

--Delivery Logs
INSERT INTO DeliveryLogs VALUES
(1, 101, 'Picked Up', DATETIME('now','-5 days')),
(2, 101, 'In Transit', DATETIME('now','-3 days')),
(3, 101, 'Delivered', DATETIME('now','-1 days'));