#zadanie 8

DELIMITER $$
DROP PROCEDURE IF EXISTS zobaczHobbyCale $$
CREATE procedure zobaczHobbyCale()
BEGIN
    PREPARE stmt FROM "SELECT nazwa, typ FROM hobby h INNER JOIN
        (SELECT id, nazwa, 'inne' AS k FROM inne
        UNION ALL SELECT id, nazwa, 'sport' AS k FROM sport
        UNION ALL SELECT id, nazwa, 'nauka' AS k FROM nauka) c
        ON (h.id = c.id AND h.typ = c.k) ";
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
END$$








------------------------------------------------------------------------------------------------
#zadanie 8								
DELIMITER $$
$$
CREATE PROCEDURE Zad8 (IN category VARCHAR(20))
BEGIN

	SET @sql = CONCAT('SELECT DISTINCT nazwa FROM ', category);
	PREPARE hobbyList FROM @sql;
	EXECUTE hobbyList;
	DEALLOCATE PREPARE hobbyList;

END$$
DELIMITER ;






DELIMITER ;SELECT * FROM `inne` WHERE 1