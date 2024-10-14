USE DBMS_PROJECT;

-- Fest table
INSERT INTO Fest (Name, FestID, Date, ManagingTeamID)
VALUES
('TechFest', 1, '2024-11-01', 100),
('CulturalFest', 2, '2024-12-15', 101);

-- Event table
INSERT INTO Event (EventID, FestID, Name, Date)
VALUES
(1, 1, 'Hackathon', '2024-11-02'),
(2, 1, 'Coding Contest', '2024-11-03'),
(3, 2, 'Dance Competition', '2024-12-16'),
(4, 2, 'Singing Competition', '2024-12-17'),
(5, 1, 'AI Workshop', '2024-11-04');

-- Sponsor table
INSERT INTO Sponsor (Name, SponsorID, Amount, EventID, FestID)
VALUES
('TechCorp', 1, 5000.00, 1, 1),
('CultureInc', 2, 3000.00, 3, 2),
('InfoTech', 3, 7000.00, 2, 1),
('EntertainmentX', 4, 4000.00, 3, 2),
('AlphaSolutions', 5, 6000.00, 1, 1);

-- Team table
INSERT INTO Team (Name, TeamID, Type, EventID, FestID)
VALUES
('DevOps Squad', 100, 'Development', 1, 1),
('AI Enthusiasts', 101, 'Research', 1, 1),
('Dancers United', 102, 'Performance', 3, 2),
('Singers League', 103, 'Performance', 4, 2),
('Coders Arena', 104, 'Development', 2, 1);

-- Member table
INSERT INTO Member (Name, M_id, Role, ContactNo, DOB, T_id, EventID, FestID)
VALUES
('John Doe', 1, 'Leader', '1234567890', '1995-08-15', 100, 1, 1),
('Jane Smith', 2, 'Developer', '0987654321', '1997-05-20', 100, 1, 1),
('Emily Johnson', 3, 'AI Specialist', '2345678901', '1996-11-11', 101, 1, 1),
('Michael Brown', 4, 'Dancer', '3456789012', '1994-02-28', 102, 3, 2),
('Sarah Lee', 5, 'Singer', '4567890123', '1995-09-05', 103, 4, 2);

-- Participant table
INSERT INTO Participant (Name, P_id, DOB, ContactNo, EventID, FestID)
VALUES
('Tom Evans', 1, '1998-06-14', '5678901234', 1, 1),
('Anna Bell', 2, '1999-12-01', '6789012345', 2, 1),
('Chris Martin', 3, '1997-04-23', '7890123456', 3, 2),
('Sophia Adams', 4, '1996-10-10', '8901234567', 4, 2),
('David Wilson', 5, '1998-01-30', '9012345678', 5, 1);

-- Stall table
INSERT INTO Stall (Name, StallID, Items, EventID, FestID)
VALUES
('Tech Booth', 1, 'Laptops, Gadgets', 1, 1),
('Coding Zone', 2, 'Programming Books, Accessories', 2, 1),
('Dance Gear', 3, 'Costumes, Music CDs', 3, 2),
('Singing Corner', 4, 'Microphones, Sound Equipment', 4, 2),
('AI Booth', 5, 'Robots, AI Tools', 5, 1);

-- Items table
INSERT INTO Items (Name, ItemID, Price, StallID)
VALUES
('Laptop', 1, 1200.00, 1),
('Gadget', 2, 200.00, 1),
('Programming Book', 3, 50.00, 2),
('Costume', 4, 100.00, 3),
('Microphone', 5, 150.00, 4);
