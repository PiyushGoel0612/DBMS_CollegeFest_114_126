-- Trigger on Event table to update related Sponsor and Team tables
DELIMITER //

CREATE TRIGGER after_event_update
AFTER UPDATE ON Event
FOR EACH ROW
BEGIN
    UPDATE Sponsor
    SET EventID = NEW.EventID
    WHERE EventID = OLD.EventID;
    
    UPDATE Team
    SET EventID = NEW.EventID
    WHERE EventID = OLD.EventID;
END;

END //


-- Trigger on Stall table to update related Items table
DELIMITER //

CREATE TRIGGER after_stall_update
AFTER UPDATE ON Stall
FOR EACH ROW
BEGIN
    UPDATE Items
    SET StallID = NEW.StallID
    WHERE StallID = OLD.StallID;
END;

END //


-- Trigger to Prevent Invalid DOB
DELIMITER //

CREATE TRIGGER check_member_dob
BEFORE INSERT ON Member
FOR EACH ROW
BEGIN
  IF NEW.DOB > CURDATE() THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid Date of Birth!';
  END IF;
END;

END //