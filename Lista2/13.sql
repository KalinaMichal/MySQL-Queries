#zadanie 13
DELIMITER $$
CREATE TRIGGER zad13A BEFORE DELETE ON nauka FOR EACH ROW 
BEGIN
DELETE FROM hobby WHERE  hobby.typ LIKE 'nauka';
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER zad13B BEFORE UPDATE ON nauka FOR EACH ROW 
BEGIN
UPDATE hobby SET osoba = NEW.id WHERE hobby.osoba LIKE OLD.id;
END$$
DELIMITER ;