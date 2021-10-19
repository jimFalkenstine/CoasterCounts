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
	CoasterStatus VARCHAR(255)
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

INSERT INTO Parks VALUES ('Kings Island', 'Mason', 'Ohio', 'United States', '1972-04-29');
INSERT INTO Parks VALUES ('Cedar Point', 'Sandusky', 'Ohio', 'United States', '1870-01-01');
INSERT INTO Parks VALUES ('Kings Dominion', 'Doswell', 'Virginia', 'United States', '1975-05-03');
INSERT INTO Parks VALUES ('Carowinds', 'Charlotte', 'North Carolina', 'United States', '1975-03-31');
INSERT INTO Parks VALUES ('Busch Gardens Williamsburg', 'Williamsburg', 'Virginia', 'United States', '1975-05-16');
INSERT INTO Parks VALUES ('Busch Gardens Tampa', 'Tampa', 'Florida', 'United States', '1959-03-31');
INSERT INTO Parks VALUES ('Holiday World', 'Santa Claus', 'Indiana', 'United States', '1946-08-03');
INSERT INTO Parks VALUES ('Dollywood', 'Pigeon Forge', 'Tennessee', 'United States', '1961-01-01');
INSERT INTO Parks VALUES ('Walt Disney World - Magic Kingdom', 'Lake Buena Vista', 'Florida', 'United States', '1971-10-01');
INSERT INTO Parks VALUES ('Walt Disney World - Disney''s Hollywood Studios', 'Lake Buena Vista', 'Florida', 'United States', '1989-05-01');
INSERT INTO Parks VALUES ('Walt Disney World - Disney''s Animal Kingdom', 'Lake Buena Vista', 'Florida', 'United States', '1998-04-22');





SELECT * FROM Parks;