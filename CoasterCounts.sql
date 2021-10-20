CREATE DATABASE CoasterCounts;

CREATE TABLE Parks (
	ParkID INT IDENTITY PRIMARY KEY,
	ParkName VARCHAR(255) NOT NULL UNIQUE,
	ParkCity VARCHAR(255),
	ParkState VARCHAR(255),
	ParkCountry VARCHAR(255),
	OpeningDate DATE 
);

CREATE TABLE Manufacturers (
	ManufacturerID INT IDENTITY PRIMARY KEY,
	ManufacturerName VARCHAR(255) NOT NULL UNIQUE,
	ManufacturerCity VARCHAR(255),
	ManufacturerState VARCHAR(255),
	ManufacturerCountry VARCHAR(255),
	ManufacturerStatus VARCHAR(255)
	);

CREATE TABLE Coasters (
	CoasterID INT IDENTITY PRIMARY KEY,
	CoasterName VARCHAR(255) NOT NULL,
	CoasterParkID INT REFERENCES Parks,
	CoasterType VARCHAR(255),
	CoasterDesign VARCHAR(255),
	CoasterManufacturerID INT REFERENCES Manufacturers,
	CoasterLength INT,
	CoasterHeight INT,
	CoasterSpeed INT,
	CoasterInversions INT,
	CoasterYear INT,
	CoasterStatus VARCHAR(255)
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
INSERT INTO Parks VALUES ('Universal Studios Islands of Adventure', 'Orlando', 'Florida', 'United States', '1999-05-28');
INSERT INTO Parks VALUES ('Universal Studios Florida', 'Orlando', 'Florida', 'United States', '1990-06-07');
INSERT INTO Parks VALUES ('Canada''s Wonderland', 'Vaughan', 'Ontario', 'Canada', '1981-05-23');
INSERT INTO Parks VALUES ('Disneyland Paris - Disneyland Park', 'Marne la Vallee', 'lle-de-France', 'France', '1992-04-12');
INSERT INTO Parks VALUES ('Kentucky Kingdom', 'Louisville', 'Kentucky', 'United States', '1987-05-23');
INSERT INTO Parks VALUES ('Camden Park', 'Huntington', 'West Virginia', 'United States', '1903-01-01');

INSERT INTO Manufacturers VALUES ('Arrow Dynamics', 'Clearfield', 'Utah', 'United States', 'Defunct');
INSERT INTO Manufacturers VALUES ('Premier Rides', 'Baltimore', 'Maryland', 'United States', 'In Business');
INSERT INTO Manufacturers VALUES ('Bolliger & Mabillard', 'Monthey', 'Valais', 'Switzerland', 'In Business');
INSERT INTO Manufacturers VALUES ('Philadelphia Toboggan Coasters, Inc.', 'Hatfield', 'Pennsylvania', 'United States', 'In Business');
INSERT INTO Manufacturers VALUES ('Vekoma', 'Vlodrop', 'Limburg', 'Netherlands', 'In Business');
INSERT INTO Manufacturers VALUES ('E&F Miller Industries', 'Portland', 'Oregon', 'United States', 'In Business');
INSERT INTO Manufacturers VALUES ('Great Coasters International', 'Sunbury', 'Pennsylvania', 'United States', 'In Business');
INSERT INTO Manufacturers (ManufacturerName, ManufacturerCountry, ManufacturerStatus) VALUES ('Togo', 'Japan', 'In Business');
INSERT INTO Manufacturers VALUES ('Gerstlauer Amusement Rides GmbH', 'Munsterhausen', 'Bavaria', 'Germany', 'In Business');
INSERT INTO Manufacturers (ManufacturerName, ManufacturerCity, ManufacturerCountry, ManufacturerStatus) VALUES ('Intamin Amusement Rides', 'Schaan', 'Liechtenstein', 'In Business');
INSERT INTO Manufacturers VALUES ('Rocky Mountain Construction', 'Hayden', 'Idaho', 'United States', 'In Business');
INSERT INTO Manufacturers VALUES ('Dinn Corporaton', 'West Chester', 'Ohio', 'United States', 'Defunct');
INSERT INTO Manufacturers VALUES ('Mack Rides GmbH & Co KG', 'Waldkirch', 'Baden-Wurttemberg', 'Germany', 'In Business');
INSERT INTO Manufacturers (ManufacturerName, ManufacturerStatus) VALUES ('International Coasters, Inc.', 'Defunct');
INSERT INTO Manufacturers VALUES ('Zierer', 'Deggendorf', 'Bavaria', 'Germany', 'In Business');
INSERT INTO Manufacturers VALUES ('Schwarzkopf', 'Munsterhausen', 'Bavaria', 'Germany', 'Defunct');
INSERT INTO Manufacturers VALUES ('Custom Coasters International, Inc.', 'West Chester', 'Ohio', 'United States', 'Defunct');
INSERT INTO Manufacturers VALUES ('Dollywood Maintenance & Construction', 'Pigeon Forge', 'Tennessee', 'United States', 'In Business');
INSERT INTO Manufacturers VALUES ('Walt Disney Parks and Resorts', 'Burbank', 'California', 'United States', 'In Business');
INSERT INTO Manufacturers VALUES ('Reverchon', 'Samois Cedex', 'lle-de-France', 'France', 'In Business');
INSERT INTO Manufacturers VALUES ('Maurer Rides', 'Munchen', 'Bavaria', 'Germany', 'In Business');
INSERT INTO Manufacturers VALUES ('Zamperla', 'Altavilla Vicentina', 'Veneto', 'Italy', 'In Business');
INSERT INTO Manufacturers VALUES ('ART Engineering', 'Kirchzarten', 'Baden-Wurttemberg', 'Germany', 'In Business');
INSERT INTO Manufacturers VALUES ('Gravitykraft Corporation', 'Cincinnati', 'Ohio', 'United States', 'In Business');
INSERT INTO Manufacturers VALUES ('Chance Rides', 'Wichita', 'Kansas', 'United States', 'In Business');
INSERT INTO Manufacturers VALUES ('National Amusement Device Company', 'Dayton', 'Ohio', 'United States', 'Defunct');

INSERT INTO Coasters VALUES ('Adventure Express', 1, 'Steel', 'Sit Down', 1, 2963, 63, 35, 0, 1991, 'Operating');
INSERT INTO Coasters VALUES ('Backlot Stunt Coaster', 1, 'Steel', 'Sit Down', 2, 1960, 45, 40, 0, 2005, 'Operating');
INSERT INTO Coasters VALUES ('Banshee', 1, 'Steel', 'Inverted', 3, 4124, 167, 68, 7, 2014, 'Operating');
INSERT INTO Coasters VALUES ('Bat', 1, 'Steel', 'Suspended', 1, 2352, 78, 51, 0, 1993, 'Operating');
INSERT INTO Coasters VALUES ('Beast', 1, 'Wood', 'Sit Down', 4, 7359, 110, 65, 0, 1979, 'Operating');
INSERT INTO Coasters VALUES ('Diamondback', 1, 'Steel', 'Sit Down', 3, 5282, 230, 80, 0, 2009, 'Operating');
INSERT INTO Coasters VALUES ('Flight of Fear', 1, 'Steel', 'Sit Down', 2, 2705, 74, 54, 4, 1996, 'Operating');
INSERT INTO Coasters VALUES ('Flying Ace Aerial Chase', 1, 'Steel', 'Inverted', 5, 1122, 49, 26, 0, 2001, 'Operating');
INSERT INTO Coasters VALUES ('Great Pumpkin Coaster', 1, 'Steel', 'Sit Down', 6, 199, 8, null, 0, 1992, 'Operating');
INSERT INTO Coasters VALUES ('Invertigo', 1, 'Steel', 'Inverted', 5, 1014, 131, 50, 3, 1999, 'Operating');
INSERT INTO Coasters VALUES ('Mystic Timbers', 1, 'Wood', 'Sit Down', 7, 3265, 109, 53, 0, 2017, 'Operating');
INSERT INTO Coasters VALUES ('Orion', 1, 'Steel', 'Sit Down', 3, 5321, 287, 91, 0, 2020, 'Operating');
INSERT INTO Coasters VALUES ('Racer', 1, 'Wood', 'Sit Down', 4, 3415, 8, 53, 0, 1972, 'Operating');
INSERT INTO Coasters VALUES ('Woodstock Express', 1, 'Wood', 'Sit Down', 4, 1350, 39, 35, 0, 1972, 'Operating');
INSERT INTO Coasters VALUES ('Firehawk', 1, 'Steel', 'Flying', 5, 3340, 115, 50, 5, 2007, 'Removed');
INSERT INTO Coasters VALUES ('King Cobra', 1, 'Steel', 'Stand Up', 8, 2219, 95, 50, 1, 1984, 'Removed');
INSERT INTO Coasters VALUES ('Son of Beast', 1, 'Wood', 'Sit Down', 9, 7032, 218, 78, 0, 2000, 'Removed');
INSERT INTO Coasters VALUES ('Vortex', 1, 'Steel', 'Sit Down', 1, 3800, 148, 55, 6, 1987, 'Removed');
INSERT INTO Coasters VALUES ('Blue Streak', 2, 'Wood', 'Sit Down', 4, 2558, 78, 40, 0, 1964, 'Operating');
INSERT INTO Coasters VALUES ('Cedar Creek Mine Ride', 2, 'Steel', 'Sit Down', 1, 2540, 18, 42, 0, 1969, 'Operating');
INSERT INTO Coasters VALUES ('Corkscrew', 2, 'Steel', 'Sit Down', 1, 2050, 85, 48, 3, 1976, 'Operating');
INSERT INTO Coasters VALUES ('GateKeeper', 2, 'Steel', 'Wing', 3, 4164, 170, 67, 6, 2013, 'Operating');
INSERT INTO Coasters VALUES ('Gemini', 2, 'Steel', 'Sit Down', 1, 3935, 125, 60, 0, 1978, 'Operating');
INSERT INTO Coasters VALUES ();
INSERT INTO Coasters VALUES ();
INSERT INTO Coasters VALUES ();

SELECT * FROM Parks;

SELECT * FROM Manufacturers;

SELECT * FROM Coasters
WHERE CoasterParkID = 1
ORDER BY CoasterYear DESC;

DROP TABLE Coasters;