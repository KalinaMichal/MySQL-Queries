DELIMITER $$
DROP PROCEDURE IF EXISTS Zad10L3 $$
CREATE PROCEDURE Zad10L3 (IN nazwazawodu VARCHAR(255))
BEGIN

SET @granica= (SELECT pensja_max FROM zawody WHERE nazwa LIKE (nazwazawodu));
SET @IDzawo= (SELECT id FROM zawody WHERE nazwa LIKE (nazwazawodu));
SET @najwZar= (SELECT zarobki FROM(SELECT praca.zarobki AS zarobki,zawody.nazwa,praca.idZawodu FROM praca
INNER JOIN zawody ON praca.idZawodu = zawody.id WHERE nazwa LIKE (nazwazawodu) GROUP BY zarobki DESC LIMIT 1) AS T);

SET @najwZar = (@najwZar+(@najwZar/10));

IF @najwZar>@granica THEN

SELECT "NIKT NIE DOSTANIE PODWY¯KI";
ELSE UPDATE praca SET zarobki = (zarobki+zarobki*0.1) WHERE idZawodu=@idZawo;
END IF;


  END$$
DELIMITER ;


CALL Zad10L3("887130bf"); <------nikt nie dostanie
CALL Zad10L3("577b2287"); <------dostanie
