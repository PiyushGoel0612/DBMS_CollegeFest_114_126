-- Function to Calculate Total Sponsors for a Fest
DELIMITER //
CREATE FUNCTION TotalSponsors(fest_id INT) 
RETURNS INT
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total 
    FROM Sponsor 
    WHERE FestID = fest_id;
    RETURN total;
END;
END //

-- Function to Check if a Member Exists
DELIMITER //
CREATE FUNCTION MemberExists(contact_no VARCHAR(15)) 
RETURNS BOOLEAN
BEGIN
    DECLARE exist BOOLEAN;
    SELECT COUNT(*) > 0 INTO exist 
    FROM Member 
    WHERE ContactNo = contact_no;
    RETURN exist;
END;
END //

-- Function to Get Number of Members in a Team
DELIMITER //
CREATE FUNCTION GetAllTeamMembers(team_id INT)
RETURNS INT
BEGIN
	DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM Member
    WHERE T_id = team_id;
    RETURN total;
END;
END //