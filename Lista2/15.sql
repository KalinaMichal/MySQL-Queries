Wszystkie triggery moga istniec na raz.

Ale np. gdybysmy dodali trigger:

DELIMITER $$
CREATE TRIGGER zad13C BEFORE UPDATE ON nauka FOR EACH ROW 
BEGIN
UPDATE hobby SET osoba = NEW.id WHERE hobby.osoba LIKE 100;
END$$
DELIMITER ;

To otrzymamy b³¹d bo mamy te triggery o tych samych akcjach i czasie
Jakbysmy zmienili na AFTER to OK

This version of MariaDB doesn't yet support 'multiple triggers with the same action time and event for one table'