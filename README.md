# CoasterCounts
A roller coaster database written in T-SQL
## Introduction
CoasterCounts is a relational database database written in T-SQL for Microsoft SQL Server.

## DDL (Data Definition Language)
CoasterCounts is a relational database consisting of five tables: Parks, Manufacturers, Coasters, Riders, and Coaster Counts.  These tables are created by the DDL (Data Definition Language) stored in the CoasterCountsDDL.sql file.  Three of the tables have four or more columns.  Both the Parks and Manufacturers tables have six columns.  The Coasters table has twelve columns.  

### Relationships
The Riders and Coasters tables have a many-to-many relationship.  Each Rider can ride many Coasters.  Each Coaster can be ridden by many Riders.  The Manufacturers and Coaster tables have a one-to-many relationship.  Each Manufacturer can make many Coasters.  Each Coaster can have only one Manufacturer.  

### Datatypes
The CoasterCounts database includes three different datatypes: int, varchar and date.  For example, in the PARKS table, the PArkID column is of type int, the ParkName column is of type varchar(255), and the OpeningDate column is of type date.

### Primary Keys/Foreign Keys
Each table in the CoasterCounts table is related to one or more tables via a primary key/foreign key relationship.  For example in the Parks table the ParkID column is the primary key.  In the Coasters table, the CoasterParkID column is a foreign key since it references the ParkID in the Parks table.

## DML (Data Manipulation Language)
The CoasterCounts database is populated with data using the DML (Data Manipulation Language) stored in the CoasterCountsDML.sql file.

## Stored Procedures
I created four stored procedures that expose CRUD (Create, Read, Update, and Delete Functionality).  The stores procedures can be found in the CoasterCountsSprocs.sql file.

### Create
The AddRider stored procedure adds a new Rider to the Riders table.  It has two parameters.  The parameters are @RiderName of type varchar(255) and @RiderBirthdate of type date.

### Read
The CoasterCount stored procedure performs a query that lists the Coaster Count of a particular Rider according to their RiderID.  The results of the query displays the rider's name, the name of each coaster ridden, and the theme park where each coaster is located.  The CoasterCount procedure has @RiderID parameter of type int.   

### Update
The AddCoasterToCount stored procedure updates an individual Rider's Coaster Count.  The AddCoasterToCount takes @RiderID and @CoasterID  both of type int as parameters.  

### Delete
The DeleteRider stored procedure deletes an individual

## Features
### Feature 1
I created a stored procedure called CoasterCount that performs a query that displays a Rider's name, the names of the Coasters they have ridden and the Theme Parks where the Coasters are located.  CoasterCount has 1 parameter, @RiderID of type int.  

Write a SELECT query that uses a WHERE clause.
Write a  SELECT query that utilizes a JOIN.
Write a  SELECT query that utilizes a JOIN with 3 or more tables.
Write a  SELECT query that utilizes a variable in the WHERE clause.

### Feature 2
Write a DML statement that DELETEs a set of rows with a WHERE clause. The values used in the WHERE clause should be a variable.

I created a stored procedure called Delete Rider that deletes a Rider with a specific RiderID.  DeleteRider has 1 parameter an integer called RiderID.

### Feature 3
Optimizing a Database.





