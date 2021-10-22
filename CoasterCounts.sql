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

CREATE TABLE CoasterCounts (
    RiderID INT REFERENCES Riders,
    CoasterID INT REFERENCES Coasters
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
INSERT INTO Parks VALUES ('Opryland USA', 'Nashville', 'Tennessee', 'United States', '1972-05-27');
INSERT INTO Parks VALUES ('Six Flags Over Georgia', 'Austell', 'Georgia', 'United States', '1967-06-16');
INSERT INTO Parks VALUES ('Stratosphere Tower', 'Las Vegas', 'Nevada', 'United States', '1996-04-29');
INSERT INTO Parks VALUES ('Six Flags St. Louis', 'Eureka', 'Missouri', 'United States', '1971-01-01');

INSERT INTO Manufacturers VALUES ('Arrow Dynamics', 'Clearfield', 'Utah', 'United States', 'Defunct');
INSERT INTO Manufacturers VALUES ('Premier Rides', 'Baltimore', 'Maryland', 'United States', 'In Business');
INSERT INTO Manufacturers VALUES ('Bolliger & Mabillard', 'Monthey', 'Valais', 'Switzerland', 'In Business');
INSERT INTO Manufacturers VALUES ('Philadelphia Toboggan Coasters, Inc.', 'Hatfield', 'Pennsylvania', 'United States', 'In Business');
INSERT INTO Manufacturers VALUES ('Vekoma', 'Vlodrop', 'Limburg', 'Netherlands', 'In Business');
INSERT INTO Manufacturers VALUES ('E&F Miller Industries', 'Portland', 'Oregon', 'United States', 'In Business');
INSERT INTO Manufacturers VALUES ('Great Coasters International', 'Sunbury', 'Pennsylvania', 'United States', 'In Business');
INSERT INTO Manufacturers VALUES ('Togo', null, null, 'Japan', 'In Business');
INSERT INTO Manufacturers VALUES ('Gerstlauer Amusement Rides GmbH', 'Munsterhausen', 'Bavaria', 'Germany', 'In Business');
INSERT INTO Manufacturers VALUES ('Intamin Amusement Rides', 'Schaan', null, 'Liechtenstein', 'In Business');
INSERT INTO Manufacturers VALUES ('Rocky Mountain Construction', 'Hayden', 'Idaho', 'United States', 'In Business');
INSERT INTO Manufacturers VALUES ('Dinn Corporaton', 'West Chester', 'Ohio', 'United States', 'Defunct');
INSERT INTO Manufacturers VALUES ('Mack Rides GmbH & Co KG', 'Waldkirch', 'Baden-Wurttemberg', 'Germany', 'In Business');
INSERT INTO Manufacturers VALUES ('International Coasters, Inc.', null, null, null, 'Defunct');
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
INSERT INTO Manufacturers VALUES ('Pinfari', 'Suzzara', 'Lombardy', 'Italy', 'Defunct');
INSERT INTO Manufacturers VALUES ('S&MC', 'Reggio Emilia', 'Emilia-Romagna', 'Italy', 'Defunct');

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
INSERT INTO Coasters VALUES ('Iron Dragon', 2, 'Steel', 'Suspended', 1, 2800, 76, 40, 0, 1987, 'Operating');
INSERT INTO Coasters VALUES ('Magnum XL-200', 2, 'Steel', 'Sit Down', 1, 5106, 205, 72, 0, 1989, 'Operating');
INSERT INTO Coasters VALUES ('Maverick', 2, 'Steel', 'Sit Down', 10, 4450, 105, 70, 2, 2007, 'Operating');
INSERT INTO Coasters VALUES ('Millennium Force', 2, 'Steel', 'Sit Down', 10, 6595, 310, 93, 0, 2000, 'Operating');
INSERT INTO Coasters VALUES ('Raptor', 2, 'Steel', 'Inverted', 3, 3790, 137, 57, 6, 1994, 'Operating');
INSERT INTO Coasters VALUES ('Rougarou', 2, 'Steel', 'Sit Down', 3, 3900, 145, 60, 4, 1996, 'Operating');
INSERT INTO Coasters VALUES ('Steel Vengeance', 2, 'Steel', 'Sit Down', 11, 5740, 205, 74, 4, 2018, 'Operating');
INSERT INTO Coasters VALUES ('Top Thrill Dragster', 2, 'Steel', 'Sit Down', 10, 2800, 420, 120, 0, 2003, 'Operating');
INSERT INTO Coasters VALUES ('Valravn', 2, 'Steel', 'Sit Down', 3, 3415, 23, 75, 3, 2016, 'Operating');
INSERT INTO Coasters VALUES ('Wicked Twister', 2, 'Steel', 'Inverted', 10, 215, 206, 72, 0, 2002, 'Removed');
INSERT INTO Coasters VALUES ('Woodstock Express', 2, 'Steel', 'Sit Down', 5, 1099, 43, 29, 0, 1999, 'Operating');
INSERT INTO Coasters VALUES ('Mean Streak', 2, 'Wood', 'Sit Down', 12, 5427, 161, 65, 0, 1991, 'Removed');
INSERT INTO Coasters VALUES ('Anaconda', 3, 'Steel', 'Sit Down', 1, 2700, 128, 50, 4, 1991, 'Operating');
INSERT INTO Coasters VALUES ('Apple Zapple', 3, 'Steel', 'Sit Down', 13, 1312, 52, 35, 0, 2002, 'Operating');
INSERT INTO Coasters VALUES ('Avalanche', 3, 'Steel', 'Bobsled', 13, null, null, 41, 0, 1988, 'Operating');
INSERT INTO Coasters VALUES ('Backlot Stunt Coaster', 3, 'Steel', 'Sit Down', 2, 1960, 45, 40, 0, 2005, 'Operating');
INSERT INTO Coasters VALUES ('Dominator', 3, 'Steel', 'Sit Down', 3, 4210, 157, 65, 5, 2008, 'Operating');
INSERT INTO Coasters VALUES ('Grizzly', 3, 'Wood', 'Sit Down', 4, 3150, 87, null, 0, 1982, 'Operating');
INSERT INTO Coasters VALUES ('Intimidator 305', 3, 'Steel', 'Sit Down', 10, 5100, 305, 90, 0, 2010, 'Operating');
INSERT INTO Coasters VALUES ('Racer 75', 3, 'Wood', 'Sit Down', 4, 3369, 85, 56, 0, 1975, 'Operating');
INSERT INTO Coasters VALUES ('Volcano, The Blast Coaster', 3, 'Steel', 'Inverted', 10, 2757, 155, 70, 4, 1998, 'Removed');
INSERT INTO Coasters VALUES ('Afterburn', 4, 'Steel', 'Inverted', 3, 2956, 113, 62, 6, 1999, 'Operating');
INSERT INTO Coasters VALUES ('Carolina Cyclone', 4, 'Steel', 'Sit Down', 1, 2100, 95, 41, 4, 1980, 'Operating' );
INSERT INTO Coasters VALUES ('Carolina Goldrusher', 4, 'Steel', 'Sit Down', 1, 2397, null, null, 0, 1973, 'Operating');
INSERT INTO Coasters VALUES ('Flying Cobras', 4, 'Steel', 'Sit Down', 5, 935, 117, 47, 3, 2009, 'Operating');
INSERT INTO Coasters VALUES ('Fury 325', 4, 'Steel', 'Sit Down', 3, 6602, 325, 95, 0, 2015, 'Operating');
INSERT INTO Coasters VALUES ('Hurler', 4, 'Wood', 'Sit Down', 14, 3157, 83, 50, 0, 1994, 'Operating');
INSERT INTO Coasters VALUES ('Intimidator', 4, 'Steel', 'Sit Down', 3, 5316, 232, 75, 0, 2010, 'Operating');
INSERT INTO Coasters VALUES ('Nighthawk', 4, 'Steel', 'Flying', 5, 27658, 115, 51, 5, 2004, 'Operating');
INSERT INTO Coasters VALUES ('Ricochet', 4, 'Steel', 'Sit Down', 13, 1214, 46, 28, 0, 2002, 'Operating');
INSERT INTO Coasters VALUES ('Vortex', 4, 'Steel', 'Stand Up', 3, 2040, 90, 50, 2, 1992, 'Operating');
INSERT INTO Coasters VALUES ('Alpengeist', 5, 'Steel', 'Inverted', 3, 3828, 195, 67, 6, 1997, 'Operating');
INSERT INTO Coasters VALUES ('Apollo''s Chariot', 5, 'Steel', 'Sit Down', 3, 4882, 170, 73, 0, 1999, 'Operating');
INSERT INTO Coasters VALUES ('Griffon', 5, 'Steel', 'Sit Down', 3, 3108, 205, 71, 2, 2007, 'Operating');
INSERT INTO Coasters VALUES ('Grover''s Alpine Express', 5, 'Steel', 'Sit Down', 15, 600, 24, null, 0, 2009, 'Operating');
INSERT INTO Coasters VALUES ('Loch Ness Monster', 5, 'Steel', 'Sit Down', 1, 3240, 130, 60, 2, 1978, 'Operating');
INSERT INTO Coasters VALUES ('Tempesto', 5, 'Steel', 'Sit Down', 2, 863, 150, 62, 1, 2015, 'Operating');
INSERT INTO Coasters VALUES ('Verbolten', 5, 'Steel', 'Sit Down', 15, 2835, null, 53, 0, 2012, 'Operating');
INSERT INTO Coasters VALUES ('Air Grover', 6, 'Steel', 'Sit Down', 15, null, null, null, 0, 2010, 'Operating');
INSERT INTO Coasters VALUES ('Cheetah Hunt', 6, 'Steel', 'Sit Down', 10, 4429, 102, 60, 1, 2011, 'Operating');
INSERT INTO Coasters VALUES ('Cobra''s Curse', 6, 'Steel', 'Sit Down', 13, 2100, 70, 40, 0, 2016, 'Operating');
INSERT INTO Coasters VALUES ('Kumba', 6, 'Steel', 'Sit Down', 3, 3978, 143, 60, 7, 1993, 'Operating');
INSERT INTO Coasters VALUES ('Montu', 6, 'Steel', 'Inverted', 3, 3983, 150, 60, 7, 1996, 'Operating');
INSERT INTO Coasters VALUES ('Sand Serpent', 6, 'Steel', 'Sit Down', 13, 1214, 46, 28, 0, 2004, 'Operating');
INSERT INTO Coasters VALUES ('Scorpion', 6, 'Steel', 'Sit Down', 16, 1818, 61, 41, 1, 1980, 'Operating');
INSERT INTO Coasters VALUES ('SheiKra', 6, 'Steel', 'Sit Down', 3, 3188, 200, 70, 1, 2005, 'Operating');
INSERT INTO Coasters VALUES ('Tigris', 6, 'Steel', 'Sit Down', 2, 863, 150, 62, 1, 2019, 'Operating');
INSERT INTO Coasters VALUES ('Legend', 7, 'Wood', 'Sit Down', 17, 4042, 99, 59, 0, 2000, 'Operating');
INSERT INTO Coasters VALUES ('Raven', 7, 'Wood', 'Sit Down', 17, 2800, 80, 48, 0, 1995, 'Operating');
INSERT INTO Coasters VALUES ('Voyage', 7, 'Wood', 'Sit Down', 4, 6442, 159, 67, 0, 2006, 'Operating');
INSERT INTO Coasters VALUES ('Blazing Fury', 8, 'Steel', 'Sit Down', 18, 1520, 22, 22, 0, 1978, 'Operating');
INSERT INTO Coasters VALUES ('FireChaser Express', 8, 'Steel', 'Sit Down', 9, 2427, 78, 35, 0, 2014, 'Operating');
INSERT INTO Coasters VALUES ('Lightning Rod', 8, 'Steel', 'Sit Down', 11, 3800, 165, 73, 0, 2016, 'Operating');
INSERT INTO Coasters VALUES ('Mystery Mine', 8, 'Steel', 'Sit Down', 9, 1805, 85, 44, 2, 2007, 'Operating');
INSERT INTO Coasters VALUES ('Tennessee Tornado', 8, 'Steel', 'Sit Down', 1, 2682, 163, 63, 3, 1999, 'Operating');
INSERT INTO Coasters VALUES ('Thunderhead', 8, 'Wood', 'Sit Down', 7, 3230, 100, 54, 0, 2004, 'Operating');
INSERT INTO Coasters VALUES ('Wild Eagle', 8, 'Steel', 'Wing', 3, 3127, 135, 61, 4, 2012, 'Operating');
INSERT INTO Coasters VALUES ('Barnstormer', 9, 'Steel', 'Sit Down', 5, 794, 30, 25, 0, 1996, 'Operating');
INSERT INTO Coasters VALUES ('Big Thunder Mountain Railroad', 9, 'Steel', 'Sit Down', 19, 2780, null, 36, 0, 1980, 'Operating');
INSERT INTO Coasters VALUES ('Seven Dwarfs Mine Train', 9, 'Steel', 'Sit Down', 5, 2001, 41, 34, 0, 2014, 'Operating');
INSERT INTO Coasters VALUES ('Space Mountain', 9, 'Steel', 'Sit Down', 19, 3196, 90, 27, 0, 1975, 'Operating');
INSERT INTO Coasters VALUES ('Rock ''n'' Roller Coaster', 10, 'Steel', 'Sit Down', 5, 3268, 80, 57, 3, 1999, 'Operating');
INSERT INTO Coasters VALUES ('Slinky Dog Dash', 10, 'Steel', 'Sit Down', 13, null, null, null, 0, 2018, 'Operating');
INSERT INTO Coasters VALUES ('Expedition Everest', 11, 'Steel', 'Sit Down', 5, 3885, 112, 50, 0, 2006, 'Operating');
INSERT INTO Coasters VALUES ('Primeval Whirl', 11, 'Steel', 'Sit Down', 20, 1378, 43, 30, 0, 2002, 'Removed');
INSERT INTO Coasters VALUES ('Incredible Hulk', 12, 'Steel', 'Sit Down', 3, 3700, 110, 37, 7, 1999, 'Operating');
INSERT INTO Coasters VALUES ('Dragon Challenge', 12, 'Steel', 'Inverted', 3, 3200, 125, 60, 5, 1999, 'Removed');
INSERT INTO Coasters VALUES ('Harry Potter and the Escape from Gringotts', 13, 'Steel', 'Sit Down', 10, null, null, null, 0, 2014, 'Operating');
INSERT INTO Coasters VALUES ('Hollywood Rip, Ride, Rockit', 13, 'Steel', 'Sit Down', 21, 3800, 167, 65, 0, 2009, 'Operating');
INSERT INTO Coasters VALUES ('Revenge of the Mummy', 13, 'Steel', 'Sit Down', 2, 2200, 44, 40, 0, 2004, 'Operating');
INSERT INTO Coasters VALUES ('Bat', 14, 'Steel', 'Sit Down', 5, 935, 117, 47, 3, 1987, 'Operating');
INSERT INTO Coasters VALUES ('Behemoth', 14, 'Steel', 'Sit Down', 3, 5318, 230, 77, 0, 2008, 'Operating');
INSERT INTO Coasters VALUES ('Dragon Fyre', 14, 'Steel', 'Sit Down', 1, 2160, 78, 50, 4, 1981, 'Operating');
INSERT INTO Coasters VALUES ('Flight Deck', 14, 'Steel', 'Inverted', 5, 2261, 109, 50, 5, 1995, 'Operating');
INSERT INTO Coasters VALUES ('Leviathan', 14, 'Steel', 'Sit Down', 3, 5486, 306, 92, 0, 2012, 'Operating');
INSERT INTO Coasters VALUES ('Mighty Canadian Minebuster', 14, 'Wood', 'Sit Down', 4, 3828, 90, 56, 0, 1981, 'Operating');
INSERT INTO Coasters VALUES ('Thunder Run', 14, 'Steel', 'Sit Down', 13, 1083, 33, 40, 0, 1981, 'Operating');
INSERT INTO Coasters VALUES ('Time Warp', 14, 'Steel', 'Flying', 22, 1283, 50, 26, 2, 2004, 'Operating');
INSERT INTO Coasters VALUES ('Vortex', 14, 'Steel', 'Suspended', 1, 2361, 91, 55, 0, 1991, 'Operating');
INSERT INTO Coasters VALUES ('Wilde Beast', 14, 'Wood', 'Sit Down', 4, 3150, 82, 56, 0, 1981, 'Operating');
INSERT INTO Coasters VALUES ('Wonder Mountain''s Guardian', 14, 'Steel', 'Sit Down', 23, 1000, 60, null, 0, 2014, 'Operating');
INSERT INTO Coasters VALUES ('Star Wars Hyperspace Mountain', 15, 'Steel', 'Sit Down', 5, 2510, 105, 44, 3, 1995, 'Operating');
INSERT INTO Coasters VALUES ('Indiana Jones et le Temple du Peril', 15, 'Steel', 'Sit Down', 10, 1969, null, null, 1, 1993, 'Operating');
INSERT INTO Coasters VALUES ('Kentucky Flyer', 16, 'Wood', 'Sit Down', 24, 1288, 47, 35, 0, 2019, 'Operating');
INSERT INTO Coasters VALUES ('Lightning Run', 16, 'Steel', 'Sit Down', 25, 2500, 100, 55, 0, 2014, 'Operating');
INSERT INTO Coasters VALUES ('Roller Skater', 16, 'Steel', 'Sit Down', 5, 680, 28, 22, 0, 1994, 'Operating');
INSERT INTO Coasters VALUES ('Storm Chaser', 16, 'Steel', 'Sit Down', 11, 2744, 100, 52, 2, 2016, 'Operating');
INSERT INTO Coasters VALUES ('T3', 16, 'Steel', 'Inverted', 5, 2172, 102, 50, 5, 1995, 'Operating');
INSERT INTO Coasters VALUES ('Thunder Run', 16, 'Wood', 'Sit Down', 12, 2850, 90, 53, 0, 1990, 'Operating');
INSERT INTO Coasters VALUES ('Starchaser', 16, 'Steel', 'Sit Down', 16, 1765, 44, 31, 0, 1987, 'Removed');
INSERT INTO Coasters VALUES ('Vampire', 16, 'Steel', 'Sit Down', 5, 935, 117, 47, 3, 1990, 'Removed');
INSERT INTO Coasters VALUES ('Big Dipper', 17, 'Wood', 'Sit Down', 26, null, null, null, null, 1958, 'Operating');
INSERT INTO Coasters VALUES ('Thunderbolt Express', 17, 'Steel', 'Sit Down', 1, 635, 56, 45, 1, 1988, 'Removed');
INSERT INTO Coasters VALUES ('Woodstock Express', 4, 'Wood', 'Sit Down', 4, 1356, null, null, 0, 1975, 'Operating');
INSERT INTO Coasters VALUES ('Kiddy Hawk', 4, 'Steel', 'Inverted', 5, 1122, 49, 26, 0, 2003, 'Operating');
INSERT INTO Coasters VALUES ('Wilderness Run', 4, 'Steel', 'Sit Down', 6, null, 15, null, 0, 1998, 'Operating');
INSERT INTO Coasters VALUES ('Woodstock Express', 3, 'Wood', 'Sit Down', 4, 1385, 356, 35, 0, 1974, 'Operating');
INSERT INTO Coasters VALUES ('Backlot Stunt Coaster', 14, 'Steel', 'Sit Down', 2, 1960, 45, 31, 0, 2005, 'Operating');
INSERT INTO Coasters VALUES ('Silver Streak', 14, 'Steel', 'Inverted', 5, 1122, 49, 26, 0, 2001, 'Operating');
INSERT INTO Coasters VALUES ('Ghoster Coaster', 14, 'Wood', 'Sit Down', 4, 1356, 41, 35, 0, 1981, 'Operating');
INSERT INTO Coasters VALUES ('Fly', 14, 'Steel', 'Sit Down', 13, 1312, 52, 35, 0, 1999, 'Operating');
INSERT INTO Coasters VALUES ('Howler', 7, 'Steel', 'Sit Down', 22, 263, 13, null, 0, 1999, 'Operating');
INSERT INTO Coasters VALUES ('Hangman', 18, 'Steel', 'Inverted', 5, 2261, 109, 50, 5, 1995, 'Removed');
INSERT INTO Coasters VALUES ('Wabash Cannonball', 18, 'Steel', 'Sit Down', 1, 1200, 70, 50, 2, 1975, 'Removed');
INSERT INTO Coasters VALUES ('Rock n'' Roller Coaster', 18, 'Steel', 'Sit Down', 1, 2036, 56, 45, 0, 1972, 'Removed');
INSERT INTO Coasters VALUES ('Chaos', 18, 'Steel', 'Sit Down', 5, 2620, null, null, 0, 1989, 'Removed');
INSERT INTO Coasters VALUES ('Screamin'' Delta Demon', 18, 'Steel', 'Bobsled', 10, null, null, null, 0, 1984, 'Removed');
INSERT INTO Coasters VALUES ('Blue Hawk', 19, 'Steel', 'Sit Down', 5, 2740, 122, 52, 5, 1992, 'Operating');
INSERT INTO Coasters VALUES ('Dahlonega Mine Train', 19, 'Steel', 'Sit Down', 1, 2327, 37, 29, 0, 1967, 'Operating');
INSERT INTO Coasters VALUES ('Dare Devil Dive', 19, 'Steel', 'Sit Down', 9, 2099, 95, 52, 3, 2011, 'Operating');
INSERT INTO Coasters VALUES ('Riddler Mindbender', 19, 'Steel', 'Sit Down', 16, 3253, 80, 50, 2, 1978, 'Operating');
INSERT INTO Coasters VALUES ('Georgia Cyclone', 19, 'Wood', 'Sit Down', 4, 2970, 95, 0, 0, 1990, 'Removed');
INSERT INTO Coasters VALUES ('Viper', 19, 'Steel', 'Sit Down', 16, 863, 138, 57, 1, 1995, 'Removed');
INSERT INTO Coasters VALUES ('Z-Force', 19, 'Steel', 'Sit Down', 10, 1900, 86, 35, 0, 1988, 'Removed');
INSERT INTO Coasters VALUES ('Firecracker', 7, 'Steel', 'Sit Down', 27, null, null, null, 0, 1981, 'Removed');
INSERT INTO Coasters VALUES ('Chang', 16, 'Steel', 'Stand Up', 3, 4155, 154, 63, 5, 1997, 'Removed');
INSERT INTO Coasters VALUES ('Twisted Twins', 16, 'Wood', 'Sit Down', 17, 3000, 80, 55, 0, 1998, 'Removed');
INSERT INTO Coasters VALUES ('Road Runner Express', 16, 'Steel', 'Sit Down', 21, 1214, 49, 28, 0, 2000, 'Removed');
INSERT INTO Coasters VALUES ('High Roller', 20, 'Steel', 'Sit Down', 28, 865, null, 30, 0, 1996, 'Removed');
INSERT INTO Coasters VALUES ('Wilderness Run', 2, 'Steel', 'Sit Down', 10, 443, 19, 6, 0, 1979, 'Operating');
INSERT INTO Coasters VALUES ('Woody Woodpecker''s Nuthouse Coaster', 13, 'Steel', 'Sit Down', 5, 680, 28, null, 0, 1999, 'United States');
INSERT INTO Coasters VALUES ('Screamin'' Eagle', 21, 'Wood', 'Sit Down', 4, 3872, 110, 62, 0, 1976, 'Operating');
INSERT INTO Coasters VALUES ('River King Mine Train', 21, 'Steel', 'Sit Down', 1, 2349, 32, 37, 0, 1971, 'Removed');
INSERT INTO Coasters VALUES ('Batman The Ride', 21, 'Steel', 'Inverted', 3, 2693, 105, 50, 5, 1995, 'Operating');
INSERT INTO Coasters VALUES ('Demon', 1, 'Steel', 'Sit Down', 1, 635, 56, 45, 1, 1977, 'Removed');

INSERT INTO Riders VALUES ('JF', '1979-05-06');
INSERT INTO Riders VALUES ('KF', '1980-08-13');
INSERT INTO Riders VALUES ('NF', '2007-04-16');
INSERT INTO Riders VALUES ('LJ', '1977-07-01');
INSERT INTO Riders VALUES ('BJ', '1955-08-23');

INSERT INTO CoasterCounts VALUES (1, 1);
INSERT INTO CoasterCounts VALUES (1, 2);
INSERT INTO CoasterCounts VALUES (1, 3);
INSERT INTO CoasterCounts VALUES (1, 4);
INSERT INTO CoasterCounts VALUES (1, 5);
INSERT INTO CoasterCounts VALUES (1, 6);
INSERT INTO CoasterCounts VALUES (1, 7);
INSERT INTO CoasterCounts VALUES (1, 8);
INSERT INTO CoasterCounts VALUES (1, 9);
INSERT INTO CoasterCounts VALUES (1, 10);
INSERT INTO CoasterCounts VALUES (1, 11);
INSERT INTO CoasterCounts VALUES (1, 12);
INSERT INTO CoasterCounts VALUES (1, 13);
INSERT INTO CoasterCounts VALUES (1, 14);
INSERT INTO CoasterCounts VALUES (1, 15);
INSERT INTO CoasterCounts VALUES (1, 16);
INSERT INTO CoasterCounts VALUES (1, 17);
INSERT INTO CoasterCounts VALUES (1, 18);
INSERT INTO CoasterCounts VALUES (1, 19);
INSERT INTO CoasterCounts VALUES (1, 20);
INSERT INTO CoasterCounts VALUES (1, 21);
INSERT INTO CoasterCounts VALUES (1, 22);
INSERT INTO CoasterCounts VALUES (1, 23);
INSERT INTO CoasterCounts VALUES (1, 24);
INSERT INTO CoasterCounts VALUES (1, 25);
INSERT INTO CoasterCounts VALUES (1, 26);
INSERT INTO CoasterCounts VALUES (1, 27);
INSERT INTO CoasterCounts VALUES (1, 28);
INSERT INTO CoasterCounts VALUES (1, 29);
INSERT INTO CoasterCounts VALUES (1, 30);
INSERT INTO CoasterCounts VALUES (1, 31);
INSERT INTO CoasterCounts VALUES (1, 32);
INSERT INTO CoasterCounts VALUES (1, 33);
INSERT INTO CoasterCounts VALUES (1, 34);
INSERT INTO CoasterCounts VALUES (1, 35);
INSERT INTO CoasterCounts VALUES (1, 36);
INSERT INTO CoasterCounts VALUES (1, 37);
INSERT INTO CoasterCounts VALUES (1, 38);
INSERT INTO CoasterCounts VALUES (1, 39);
INSERT INTO CoasterCounts VALUES (1, 40);
INSERT INTO CoasterCounts VALUES (1, 41);
INSERT INTO CoasterCounts VALUES (1, 42);
INSERT INTO CoasterCounts VALUES (1, 43);
INSERT INTO CoasterCounts VALUES (1, 44);
INSERT INTO CoasterCounts VALUES (1, 45);
INSERT INTO CoasterCounts VALUES (1, 46);
INSERT INTO CoasterCounts VALUES (1, 47);
INSERT INTO CoasterCounts VALUES (1, 48);
INSERT INTO CoasterCounts VALUES (1, 49);
INSERT INTO CoasterCounts VALUES (1, 50);
INSERT INTO CoasterCounts VALUES (1, 51);
INSERT INTO CoasterCounts VALUES (1, 52);
INSERT INTO CoasterCounts VALUES (1, 53);
INSERT INTO CoasterCounts VALUES (1, 54);
INSERT INTO CoasterCounts VALUES (1, 55);
INSERT INTO CoasterCounts VALUES (1, 56);
INSERT INTO CoasterCounts VALUES (1, 57);
INSERT INTO CoasterCounts VALUES (1, 58);
INSERT INTO CoasterCounts VALUES (1, 59);
INSERT INTO CoasterCounts VALUES (1, 60);
INSERT INTO CoasterCounts VALUES (1, 61);
INSERT INTO CoasterCounts VALUES (1, 62);
INSERT INTO CoasterCounts VALUES (1, 63);
INSERT INTO CoasterCounts VALUES (1, 64);
INSERT INTO CoasterCounts VALUES (1, 65);
INSERT INTO CoasterCounts VALUES (1, 66);
INSERT INTO CoasterCounts VALUES (1, 67);
INSERT INTO CoasterCounts VALUES (1, 68);
INSERT INTO CoasterCounts VALUES (1, 69);
INSERT INTO CoasterCounts VALUES (1, 70);
INSERT INTO CoasterCounts VALUES (1, 71);
INSERT INTO CoasterCounts VALUES (1, 72);
INSERT INTO CoasterCounts VALUES (1, 73);
INSERT INTO CoasterCounts VALUES (1, 74);
INSERT INTO CoasterCounts VALUES (1, 75);
INSERT INTO CoasterCounts VALUES (1, 76);
INSERT INTO CoasterCounts VALUES (1, 77);
INSERT INTO CoasterCounts VALUES (1, 78);
INSERT INTO CoasterCounts VALUES (1, 79);
INSERT INTO CoasterCounts VALUES (1, 80);
INSERT INTO CoasterCounts VALUES (1, 81);
INSERT INTO CoasterCounts VALUES (1, 82);
INSERT INTO CoasterCounts VALUES (1, 83);
INSERT INTO CoasterCounts VALUES (1, 84);
INSERT INTO CoasterCounts VALUES (1, 85);
INSERT INTO CoasterCounts VALUES (1, 86);
INSERT INTO CoasterCounts VALUES (1, 87);
INSERT INTO CoasterCounts VALUES (1, 88);
INSERT INTO CoasterCounts VALUES (1, 89);
INSERT INTO CoasterCounts VALUES (1, 90);
INSERT INTO CoasterCounts VALUES (1, 91);
INSERT INTO CoasterCounts VALUES (1, 92);
INSERT INTO CoasterCounts VALUES (1, 93);
INSERT INTO CoasterCounts VALUES (1, 94);
INSERT INTO CoasterCounts VALUES (1, 95);
INSERT INTO CoasterCounts VALUES (1, 96);
INSERT INTO CoasterCounts VALUES (1, 97);
INSERT INTO CoasterCounts VALUES (1, 98);
INSERT INTO CoasterCounts VALUES (1, 99);
INSERT INTO CoasterCounts VALUES (1, 100);
INSERT INTO CoasterCounts VALUES (1, 101);
INSERT INTO CoasterCounts VALUES (1, 102);
INSERT INTO CoasterCounts VALUES (1, 103);
INSERT INTO CoasterCounts VALUES (1, 104);
INSERT INTO CoasterCounts VALUES (1, 105);
INSERT INTO CoasterCounts VALUES (1, 106);
INSERT INTO CoasterCounts VALUES (1, 107);
INSERT INTO CoasterCounts VALUES (1, 108);
INSERT INTO CoasterCounts VALUES (1, 109);
INSERT INTO CoasterCounts VALUES (1, 110);
INSERT INTO CoasterCounts VALUES (1, 111);
INSERT INTO CoasterCounts VALUES (1, 112);
INSERT INTO CoasterCounts VALUES (1, 113);
INSERT INTO CoasterCounts VALUES (1, 114);
INSERT INTO CoasterCounts VALUES (1, 115);
INSERT INTO CoasterCounts VALUES (1, 116);