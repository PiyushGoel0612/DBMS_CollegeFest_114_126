USE DBMS_PROJECT;

-- Update the name of a fest where FestID = 1
UPDATE Fest
SET Name = 'TechnoFest'
WHERE FestID = 1;

-- Update the sponsored amount for SponsorID = 1
UPDATE Sponsor
SET Amount = 5500.00
WHERE SponsorID = 1;

-- Update contact number for Participant with P_id = 2
UPDATE Participant
SET ContactNo = '8887776665'
WHERE P_id = 2;

-- Delete the sponsor with SponsorID = 3
DELETE FROM Sponsor
WHERE SponsorID = 3;

-- Delete the team with TeamID = 2 and EventID = 1
DELETE FROM Team
WHERE TeamID = 2 AND EventID = 1;
