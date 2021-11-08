/* CoasterCountsDDL.sql
 * Author: Jim Falkenstine
 * Date Created: 10/17/2021
 * Description: DDL CoasterCounts app
 *
 * Tables:
 *	Parks (ParkID, ParkName, ParkCity, ParkState, ParkCountry, OpeningDate)
 *	Manufacturers (ManufacturerID, ManufacturerName, ManufacturerCity, ManufacturerState, ManufacturerCountry, ManufacturerStatus)
 *	Coasters (CoasterID, CoasterName, CoasterParkID, CoasterType, CoasterDesign, CoasterManufacturerID, CoasterLength, CoasterHeight, CoasterSpeed, CoasterInversions, CoasterYear, CoasterStatus)
 * 	Riders (RiderID, RiderName, RiderBirthdate)
 *	CoasterCounts (RiderID, CoasterID)
 *
 * Indexes:
 *	IX_ParkName
 *	IX_CoasterName
 *
 * Stored Procedures
 *	AddRider @RiderName, @RiderBirthdate
 *	ReadCoasterCount @RiderID
 *	UpdateCoasterStatus @CoasterID
 *	DeleteRider @RiderID
 *	DeleteCoasterFromCount @RiderID, @CoasterID
 *
 */



/***************************************************

	Tables

****************************************************/


DROP TABLE IF EXISTS [CoasterCounts];
GO

DROP TABLE IF EXISTS [Riders];
GO

DROP TABLE IF EXISTS [Coasters];
GO

DROP TABLE IF EXISTS [Manufacturers];
GO

DROP TABLE IF EXISTS [Parks];
GO

CREATE TABLE [Parks] (
	[ParkID] int identity PRIMARY KEY,
	[ParkName] varchar(255) NOT NULL UNIQUE,
	[ParkCity] varchar(255),
	[ParkState] varchar(255),
	[ParkCountry] varchar(255),
	[OpeningDate] date);
GO

CREATE TABLE [Manufacturers] (
	[ManufacturerID] int identity PRIMARY KEY,
	[ManufacturerName] varchar(255) NOT NULL UNIQUE,
	[ManufacturerCity] varchar(255),
	[ManufacturerState] varchar(255),
	[ManufacturerCountry] varchar(255),
	[ManufacturerStatus] varchar(255));
GO

CREATE TABLE [Coasters] (
	[CoasterID] int identity PRIMARY KEY,
	[CoasterName] varchar(255) NOT NULL,
	[CoasterParkID] int REFERENCES Parks,
	[CoasterType] varchar(255),
	[CoasterDesign] varchar(255),
	[CoasterManufacturerID] int REFERENCES [Manufacturers],
	[CoasterLength] int,
	[CoasterHeight] int,
	[CoasterSpeed] int,
	[CoasterInversions] int,
	[CoasterYear] int,
	[CoasterStatus] varchar(255));
GO

CREATE TABLE [Riders] (
	[RiderID] int identity PRIMARY KEY,
	[RiderName] varchar(255),
	[RiderBirthdate] date);
GO

CREATE TABLE [CoasterCounts] (
    [RiderID] int REFERENCES [Riders],
    [CoasterID] int REFERENCES [Coasters]);
GO


/**************************************************

	Indexes

***************************************************/


CREATE NONCLUSTERED INDEX IX_ParkName ON [Parks] (ParkName)
GO


CREATE NONCLUSTERED INDEX IX_CoasterName ON [Coasters] (CoasterName)
GO


/******************************************************

	Stored Procedures

*******************************************************/


CREATE OR ALTER PROCEDURE AddRider
	@RiderName varchar(255),
	@RiderBirthdate date
AS
BEGIN
	INSERT INTO [Riders] ([RiderName], [RiderBirthdate])
		VALUES (@RiderName, @RiderBirthdate)
END
GO

CREATE OR ALTER PROCEDURE ReadCoasterCount
	@RiderID int
AS
BEGIN
SELECT r.RiderName AS RiderName, c.CoasterName AS CoasterName, p.ParkName AS ParkName 
FROM CoasterCounts cc
JOIN Riders r ON cc.RiderID = r.RiderID
JOIN Coasters c ON cc.CoasterID = c.CoasterID
JOIN Parks p on p.ParkID = c.CoasterParkID
WHERE cc.RiderID = @RiderID;
END
GO

CREATE OR ALTER PROCEDURE UpdateCoasterStatus
	@CoasterID int
AS
BEGIN
	UPDATE [Coasters]
	SET CoasterStatus = 'Removed'
	WHERE CoasterID = @CoasterID;
END
GO

CREATE OR ALTER PROCEDURE DeleteCoasterFromCount
	@RiderID int,
	@CoasterID int
AS
BEGIN
	DELETE FROM [CoasterCounts] 
	WHERE RiderID = @RiderID AND CoasterID = @CoasterID
END
GO
