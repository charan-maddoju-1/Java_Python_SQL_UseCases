CREATE TABLE Partners (
    PartnerID INTEGER PRIMARY KEY,
    PartnerName varchar(255)
);

CREATE TABLE Shipments (
    ShipmentID INTEGER PRIMARY KEY,
    PartnerID INTEGER,
    SourceCity varchar(255),
    DestinationCity varchar(255),
    OrderDate DATE,
    PromisedDate DATE,
    ActualDeliveryDate DATE,
    Status varchar(255),
    FOREIGN KEY (PartnerID) REFERENCES Partners(PartnerID)
);


CREATE TABLE DeliveryLogs (
    LogID INTEGER PRIMARY KEY,
    ShipmentID INTEGER,
    LogStatus varchar(255),
    LogTime DATETIME,
    FOREIGN KEY (ShipmentID) REFERENCES Shipments(ShipmentID)
);