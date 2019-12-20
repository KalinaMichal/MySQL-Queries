#ZADANIE4	-	gotowe
DELIMITER $$
DROP PROCEDURE IF EXISTS Zad4L3 $$
CREATE PROCEDURE Zad4L3 (IN agg VARCHAR(255), IN kol VARCHAR(255))

BEGIN
#------------------------
IF agg = "COUNT" THEN
    IF kol LIKE("plec") THEN
		SELECT plec, count(plec)
 		FROM osoba GROUP BY plec;
	ELSEIF kol LIKE( "imie") THEN
		SELECT imi�, count(imi�)
 		FROM osoba GROUP BY imi�;
    ELSE SELECT "ERROR-ZLE DANE";
    END IF;

#-------------------------
ELSEIF agg = "MIN" THEN
	IF kol LIKE ("dataUrodzenia") THEN
    	SELECT MIN(dataUrodzenia) FROM osoba;
    ELSE SELECT "ERROR-ZLE DANE";
	END IF;

ELSEIF agg = "MAX" THEN
	IF kol LIKE ("dataUrodzenia")THEN
    	SELECT MAX(dataUrodzenia) FROM osoba;
    ELSE SELECT "ERROR-ZLE DANE";
	END IF;

ELSEIF agg = "AVG" THEN
	IF kol LIKE ("dataUrodzenia") THEN
    	SELECT imi�, AVG(wiek)AS sredniWiek FROM (SELECT imi�,id,(YEAR(CURDATE())-YEAR(dataUrodzenia)) - (RIGHT(CURDATE(),5)<RIGHT(dataUrodzenia,5)) AS wiek FROM osoba) AS T;
    ELSE SELECT "ERROR-ZLE DANE";
	END IF;

#--------------------------
ELSEIF agg= "GROUP_CONCAT" THEN
	IF kol LIKE ("nazwisko") THEN
    	SELECT id, GROUP_CONCAT(nazwisko) as "CONCAT" FROM event group by nazwisko;
    ELSEIF kol LIKE ("dataUrodzenia") THEN
    	SELECT id, GROUP_CONCAT(dataUrodzenia) as "CONCAT" FROM event group by dataUrodzenia;
    ELSEIF kol LIKE ("imi�") THEN
        SELECT id, GROUP_CONCAT(imi�) as "CONCAT" FROM event group by imi�;
    ELSEIF kol LIKE ("plec") THEN
         SELECT id, GROUP_CONCAT(plec) as "CONCAT" FROM event group by plec;   
    ELSE SELECT "ERROR-ZLE DANE";
	END IF;
#---------------------------
ELSEIF agg="STD" THEN
	IF kol LIKE ("dataUrodzenia") THEN
		SELECT imi�, STD(wiek)AS sredniWiek FROM (SELECT imi�,id,(YEAR(CURDATE())-YEAR(dataUrodzenia)) - (RIGHT(CURDATE(),5)<RIGHT(dataUrodzenia,5)) AS wiek FROM osoba) AS T;
    ELSE SELECT "ERROR-ZLE DANE";
    END IF;

ELSEIF agg="VAR_POP" THEN
		IF kol LIKE ("dataUrodzenia") THEN
			SELECT imi�, VAR_POP(wiek) AS sredniWiek FROM (SELECT imi�,id,(YEAR(CURDATE())-YEAR(dataUrodzenia)) - (RIGHT(CURDATE(),5)<RIGHT(dataUrodzenia,5)) AS wiek FROM osoba) AS T;
        ELSE SELECT "ERROR-ZLE DANE";         
        END IF;
ELSE SELECT "ERROR-ZLE DANE";
END IF;
  END$$
DELIMITER ;