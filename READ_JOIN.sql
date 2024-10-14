USE DBMS_PROJECT;

-- READS

-- Select all events that occured in November
SELECT * FROM Event
WHERE MONTH(Date) = 11;

-- Select all members and their roles in a specific event
SELECT Member.Name, Member.Role, Team.Name AS TeamName
FROM Member
JOIN Team ON Member.T_id = Team.TeamID
WHERE Member.EventID = 1;

-- JOINS

-- List all Fests with their managing teams
SELECT F.FestID AS FestID, F.Name AS FestName, T.Name AS TeamName, T.Type AS TeamType
FROM Fest As F 
JOIN Team AS T ON F.ManagingTeamID = T.TeamID;

-- List all stalls in a specific event
SELECT Name, Items
FROM Stall
WHERE EventID = 3;

-- List all events with their sponsors and total sponsorship amount for each fest
SELECT F.Name AS FestName, E.Name as EventName, SUM(S.Amount) AS TotalAmountSponsored
FROM Fest AS F
JOIN Event AS E ON F.FestID = E.FestID
JOIN Sponsor AS S ON E.EventID = S.EventID
GROUP BY Fest.Name, Event.Name
ORDER BY TotalSponsorship DESC;

-- Find the most popular event based on the number of participants
SELECT Event.Name, COUNT(Participant.P_id) AS NumberOfParticipants
FROM Event
JOIN Participant ON Event.EventID = Participant.EventID
GROUP BY Event.Name
ORDER BY NumberOfParticipants DESC
LIMIT 1;

-- List the most expensive items being sold in each stall
SELECT Stall.Name AS StallName, Items.Name AS ItemName, MAX(Items.Price) AS MaxPrice
FROM Stall
JOIN Items ON Stall.StallID = Items.StallID
GROUP BY Stall.Name;
