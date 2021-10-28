--Create a new Rider
CREATE OR ALTER PROCEDURE AddRider
	@RiderName varchar(255),
	@RiderBirthdate date
AS
BEGIN
	INSERT INTO [Riders] ([RiderName], [RiderBirthdate])
		VALUES (@RiderName, @RiderBirthdate)
END
GO

--Read a Rider's Coaster Count
CREATE OR ALTER PROCEDURE CoasterCount
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

--Update a Rider's Coaster Count
CREATE OR ALTER PROCEDURE AddCoasterToCount
	@RiderID int,
	@CoasterID int

AS
BEGIN
	INSERT INTO [CoasterCounts] ([RiderID], [CoasterID])
		VALUES(@RiderID, @CoasterID)
END
GO

--Delete a Rider
CREATE OR ALTER PROCEDURE DeleteRider
	@RiderID int

AS
BEGIN
	DELETE FROM [Riders] WHERE RiderID = @RiderID
END
GO


--Calling Stored Procedures
EXECUTE AddRider @RiderName = 'AF',
				 @RiderBirthdate = '1983-03-08';

EXECUTE CoasterCount @RiderID = 2;

EXECUTE AddCoasterToCount @RiderID = 6,
						  @CoasterID = 1;

EXECUTE DeleteRider @RiderID = 8;

SELECT * FROM Riders;

SELECT * FROM CoasterCounts