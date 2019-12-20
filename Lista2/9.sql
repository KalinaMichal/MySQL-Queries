#zadanie 9

DELIMITER $$
DROP PROCEDURE IF EXISTS zobaczHobby $$
CREATE procedure zobaczHobby(IN id int)
BEGIN
    PREPARE stmt FROM "SELECT nazwa, typ FROM hobby h INNER JOIN
        (SELECT id, nazwa, 'inne' AS k FROM inne
        UNION ALL SELECT id, nazwa, 'sport' AS k FROM sport
        UNION ALL SELECT id, nazwa, 'nauka' AS k FROM nauka) c
        ON (h.id = c.id AND h.typ = c.k) WHERE h.osoba = ? UNION ALL
        SELECT DISTINCT species AS 'nazwa', 'zwierzak' AS typ FROM zwierzak WHERE ID = ?";
    EXECUTE stmt USING @id, @id;
    DEALLOCATE PREPARE stmt;
    
END$$




-----------------------------------------------------------------------------------------------



DELIMITER $$
DROP PROCEDURE IF EXISTS Zad9 $$
CREATE PROCEDURE Zad9(IN IDosoby int)
 BEGIN
 SELECT DISTINCT typ 
 FROM hobby
 WHERE hobby.osoba = IDosoby;

  END$$
DELIMITER ;