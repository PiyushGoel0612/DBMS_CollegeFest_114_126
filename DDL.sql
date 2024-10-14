CREATE DATABASE DBMS_PROJECT;

USE DBMS_PROJECT;

-- Fest table
CREATE TABLE Fest (
    Name VARCHAR(255),
    FestID INT PRIMARY KEY,
    Date DATE,
    ManagingTeamID INT
);

-- Event table
CREATE TABLE Event (
    EventID INT,
    FestID INT,
    Name VARCHAR(255),
    Date DATE,
    FOREIGN KEY (FestID) REFERENCES Fest(FestID),
    PRIMARY KEY (EventID, FestID) -- Composite primary key
);

-- Sponsor table
CREATE TABLE Sponsor (
    Name VARCHAR(255),
    SponsorID INT PRIMARY KEY,
    Amount DECIMAL(10, 2),
    EventID INT,
    FestID INT,
    FOREIGN KEY (EventID, FestID) REFERENCES Event(EventID, FestID) -- Foreign key to composite key
);

-- Team table
CREATE TABLE Team (
    Name VARCHAR(255),
    TeamID INT,
    Type VARCHAR(255),
    EventID INT,
    FestID INT,
    PRIMARY KEY (TeamID, EventID, FestID), -- Composite primary key
    FOREIGN KEY (EventID, FestID) REFERENCES Event(EventID, FestID) -- Foreign key to composite key
);

-- Member table
CREATE TABLE Member (
    Name VARCHAR(255),
    M_id INT PRIMARY KEY,
    Role VARCHAR(255),
    ContactNo VARCHAR(20),
    DOB DATE,
    T_id INT,
    EventID INT,
    FestID INT,
    FOREIGN KEY (T_id, EventID, FestID) REFERENCES Team(TeamID, EventID, FestID) -- Foreign key to composite key
);

-- Participant table
CREATE TABLE Participant (
    Name VARCHAR(255),
    P_id INT PRIMARY KEY,
    DOB DATE,
    ContactNo VARCHAR(20),
    EventID INT,
    FestID INT,
    FOREIGN KEY (EventID, FestID) REFERENCES Event(EventID, FestID) -- Foreign key to composite key
);

-- Stall table
CREATE TABLE Stall (
    Name VARCHAR(255),
    StallID INT PRIMARY KEY,
    Items VARCHAR(255),
    EventID INT,
    FestID INT,
    FOREIGN KEY (EventID, FestID) REFERENCES Event(EventID, FestID) -- Foreign key to composite key
);

-- Items table
CREATE TABLE Items (
    Name VARCHAR(255),
    ItemID INT PRIMARY KEY,
    Price DECIMAL(10, 2),
    StallID INT,
    FOREIGN KEY (StallID) REFERENCES Stall(StallID)
);
