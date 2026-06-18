--Partners
INSERT INTO Partners VALUES 
(1, 'FastExpress'),
(2, 'QuickShip'),
(3, 'SpeedX');

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



INSERT INTO Partners VALUES
(4, 'BlueDart'),
(5, 'SafeCargo'),
(6, 'RapidMove');

INSERT INTO Shipments VALUES
(107, 4, 'Mumbai', 'Kolkata', DATE('now','-8 days'), DATE('now','-4 days'), DATE('now','-3 days'), 'Delivered'),
(108, 4, 'Pune', 'Hyderabad', DATE('now','-5 days'), DATE('now','-2 days'), NULL, 'In Transit'),
(109, 5, 'Chennai', 'Delhi', DATE('now','-12 days'), DATE('now','-7 days'), DATE('now','-5 days'), 'Delivered'),
(110, 5, 'Bangalore', 'Mumbai', DATE('now','-6 days'), DATE('now','-3 days'), DATE('now','-2 days'), 'Returned'),
(111, 6, 'Kolkata', 'Pune', DATE('now','-4 days'), DATE('now','-1 days'), NULL, 'In Transit'),
(112, 6, 'Hyderabad', 'Delhi', DATE('now','-9 days'), DATE('now','-5 days'), DATE('now','-4 days'), 'Delivered'),
(113, 1, 'Mumbai', 'Chennai', DATE('now','-7 days'), DATE('now','-3 days'), DATE('now','-2 days'), 'Delivered'),
(114, 2, 'Delhi', 'Hyderabad', DATE('now','-5 days'), DATE('now','-2 days'), NULL, 'In Transit'),
(115, 3, 'Pune', 'Bangalore', DATE('now','-10 days'), DATE('now','-6 days'), DATE('now','-4 days'), 'Delivered');

INSERT INTO DeliveryLogs VALUES
(4, 107, 'Picked Up', DATETIME('now','-8 days')),
(5, 107, 'In Transit', DATETIME('now','-5 days')),
(6, 107, 'Delivered', DATETIME('now','-3 days')),

(7, 108, 'Picked Up', DATETIME('now','-5 days')),
(8, 108, 'In Transit', DATETIME('now','-2 days')),

(9, 109, 'Picked Up', DATETIME('now','-12 days')),
(10, 109, 'In Transit', DATETIME('now','-8 days')),
(11, 109, 'Delivered', DATETIME('now','-5 days')),

(12, 110, 'Picked Up', DATETIME('now','-6 days')),
(13, 110, 'In Transit', DATETIME('now','-4 days')),
(14, 110, 'Returned', DATETIME('now','-2 days')),

(15, 111, 'Picked Up', DATETIME('now','-4 days')),
(16, 111, 'In Transit', DATETIME('now','-1 days')),

(17, 112, 'Picked Up', DATETIME('now','-9 days')),
(18, 112, 'In Transit', DATETIME('now','-6 days')),
(19, 112, 'Delivered', DATETIME('now','-4 days')),

(20, 113, 'Picked Up', DATETIME('now','-7 days')),
(21, 113, 'In Transit', DATETIME('now','-4 days')),
(22, 113, 'Delivered', DATETIME('now','-2 days')),

(23, 114, 'Picked Up', DATETIME('now','-5 days')),
(24, 114, 'In Transit', DATETIME('now','-2 days')),

(25, 115, 'Picked Up', DATETIME('now','-10 days')),
(26, 115, 'In Transit', DATETIME('now','-7 days')),
(27, 115, 'Delivered', DATETIME('now','-4 days'));


INSERT INTO Shipments VALUES
(116, 1, 'Chennai', 'Kolkata', DATE('now','-4 days'), DATE('now','-2 days'), DATE('now','-3 days'), 'Delivered');

INSERT INTO DeliveryLogs VALUES
(28, 116, 'Picked Up', DATETIME('now','-4 days')),
(29, 116, 'In Transit', DATETIME('now','-4 days')),
(30, 116, 'Delivered', DATETIME('now','-3 days'));