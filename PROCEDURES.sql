-- Procedure to Add a New Participant
DELIMITER //
CREATE PROCEDURE AddParticipant(
    IN p_name VARCHAR(50), 
    IN p_dob DATE, 
    IN p_contactno VARCHAR(15), 
    IN p_eventid INT, 
    IN p_festid INT
)
BEGIN
    IF NOT MemberExists(p_contactno) THEN
        INSERT INTO Participant (Name, DOB, ContactNo, EventID, FestID)
        VALUES (p_name, p_dob, p_contactno, p_eventid, p_festid);
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Participant with this contact already exists!';
    END IF;
END //

-- Procedure to Update Event Details
DELIMITER $$
CREATE PROCEDURE UpdateEvent(
    IN p_eventid INT, 
    IN p_new_name VARCHAR(100), 
    IN p_new_date DATE
)
BEGIN
    UPDATE Event 
    SET Name = p_new_name, Date = p_new_date 
    WHERE EventID = p_eventid;
END $$

-- Procedure to Delete a Sponsor by SponsorID
DELIMITER $$
CREATE PROCEDURE DeleteSponsor(
    IN p_sponsorid INT
)
BEGIN
    DELETE FROM Sponsor 
    WHERE SponsorID = p_sponsorid;
END$$
