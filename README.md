# CoasterCounts

## Introduction
This repository serves as my final project for the [Code Louisville](https://www.codelouisville.org) Fall 2021 SQL Course.  The purpose of this code is to demonstrate the use of SQL and Git.

## Project Description

**Coaster Counts**

Coaster Counts is a sample database for tracking roller coaster stats.  You can also track the roller coasters you and your friends have ridden.  By executing stored procedures, you can add a new rider, list coasters by theme park, list coasters by manufacturer, list a rider's coaster count, update a coaster's status, and delete a coaster from a rider's coaster count.

## Features

- Maintain lists of Roller Coasters, Theme Parks, and Roller Coaster Manufacturers
- Track Riders' Coaster Counts

## User Instructions

| Feature | Command |
| ---------- | ---------- |
| Add a Rider | AddRider @RiderName = "Rider Name", @RiderBirthdate = "Rider Birthdate" |
| List Coasters by Theme Park | ReadCoastersByPark @ParkName = "Theme Park Name" |
| List Coasters by Manufacturer | ReadCoastersbyManufacturer = "Coaster Manufacturer Name" |
| List a Rider's Coaster Count | CoasterCount @RiderID = "Rider ID" |
| Update a Coaster's Status | UpdateCoasterStatus @CoasterID = "Coaster ID", @CoasterStatus = "Coaster Staus" |
| Delete a Coaster from a Rider's Coaster Count | DeleteCoasterFromCount @RiderID = "Rider ID", @CoasterID = "Coaster ID" |

## Technical Instructions

- Requires MS SQL Server.
- Execute the CoasterCountsDDL.sql script to create the database objects.
- Execute the CoasterCountsDML.sql script to load the sample data.
- The CoasterCounts.sql file has example commands showing how to use the stored procedures.

## Project Requirements

**Group 1: Reading Data from a Database**

- Write a SELECT query that uses a WHERE clause.
- Write a SELECT query that utilizes a JOIN.
- Write a SELECT query that utilizes a JOIN with 3 or more tables.
- Write a SELECT query that utilizes a variable in the WHERE clause.
- Write a SELECT query that utilizes an ORDER BY clause.

**Group 2: Updating/Deleting Data from a Database**

- Write a DML statement that UPDATEs a set of rows with a WHERE clause. The values used in the WHERE clause should be a variable.
- Write a DML statement that DELETEs a set of rows with a WHERE clause. The values used in the WHERE clause should be a variable.

**Group 3: Optimizing a Database**

- Design a NONCLUSTERED INDEX with ONE KEY COLUMN that improves the performance of one of the above queries.