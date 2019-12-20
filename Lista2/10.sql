#zadanie 10

DELIMITER $$
DROP PROCEDURE IF EXISTS Zad10 $$
CREATE PROCEDURE Zad10(IN IDosoby int)
 BEGIN
 SELECT DISTINCT typ
 FROM hobby
 WHERE hobby.osoba = IDosoby
 union
 SELECT DISTINCT species
 FROM zwierzak
 WHERE zwierzak.id = IDosoby;

  END$$
DELIMITER ;