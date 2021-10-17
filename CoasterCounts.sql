CREATE DATABASE CoasterCounts;

CREATE TABLE Coasters (
	CoasterID INT IDENTITY PRIMARY KEY,
	CoasterName VARCHAR(255),
	CoasterPark VARCHAR(255),
	CoasterType VARCHAR(255),
	CoasterDesign VARCHAR(255),
	CoasterMake VARCHAR(255),
	CoasterLength INT,
	CoasterHeight INT,
	CoasterInversions INT,
	CoasterYear INT,
	CoasterStatus VARCHAR(255),
);

CREATE TABLE Parks (
	ParkID INT IDENTITY PRIMARY KEY,
	ParkName VARCHAR(255),
	ParkCity VARCHAR(255),
	ParkState VARCHAR(255),
	ParkCountry VARCHAR(255),
	OpeningDate DATE 
);

CREATE TABLE Riders (
	RiderID INT IDENTITY PRIMARY KEY,
	RiderName VARCHAR(255),
	RiderBirthdate DATE
);

