CREATE DATABASE [CoasterCounts];
GO

USE [CoasterCounts];
GO

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
	[RiderBirthdate] DATE);
GO

CREATE TABLE [CoasterCounts] (
    [RiderID] int REFERENCES [Riders],
    [CoasterID] int REFERENCES [Coasters]);
GO