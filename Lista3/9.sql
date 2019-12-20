#Wersja nie poprawna czyli bez LaPLacea, poprawna jest niżej
DELIMITER $$
DROP PROCEDURE IF EXISTS Zad9L3 $$
CREATE PROCEDURE Zad9L3 (IN nazwazawodu VARCHAR(255))
BEGIN

#SELECT nazwa, sredniZarobek, gornaGranica,dolnaGranica FROM (SELECT DISTINCT nazwa, AVG(zarobki)AS "sredniZarobek", AVG(zarobkiMax) AS "gornaGranica",AVG(zarobkiMin) AS "dolnaGranica" FROM (SELECT praca.idOsoby,praca.zarobki,zawody.nazwa,(praca.zarobki-praca.zarobki*0.03) AS zarobkiMin,(praca.zarobki+praca.zarobki*0.03) AS zarobkiMax FROM praca
#INNER JOIN zawody ON praca.idZawodu = zawody.id) AS T
#WHERE nazwazawodu LIKE(nazwa)) AS T2
#WHERE sredniZarobek>1000;

IF (SELECT gornaGranica FROM (SELECT DISTINCT nazwa, AVG(zarobki)AS "sredniZarobek", AVG(zarobkiMax) AS "gornaGranica",AVG(zarobkiMin) AS "dolnaGranica" FROM (SELECT praca.idOsoby,praca.zarobki,zawody.nazwa,(praca.zarobki-praca.zarobki*0.03) AS zarobkiMin,(praca.zarobki+praca.zarobki*0.03) AS zarobkiMax FROM praca
INNER JOIN zawody ON praca.idZawodu = zawody.id) AS T
WHERE nazwazawodu LIKE(nazwa)) AS T2)>(SELECT pensja_max FROM zawody WHERE nazwa LIKE (nazwazawodu)) THEN
SELECT nazwa, sredniZarobek, dolnaGranica FROM (SELECT DISTINCT nazwa, AVG(zarobki)AS "sredniZarobek", AVG(zarobkiMax) AS "gornaGranica",AVG(zarobkiMin) AS "dolnaGranica" FROM (SELECT praca.idOsoby,praca.zarobki,zawody.nazwa,(praca.zarobki-praca.zarobki*0.03) AS zarobkiMin,(praca.zarobki+praca.zarobki*0.03) AS zarobkiMax FROM praca
INNER JOIN zawody ON praca.idZawodu = zawody.id) AS T
WHERE nazwazawodu LIKE(nazwa)) AS T2;

ELSEIF (SELECT dolnaGranica FROM (SELECT DISTINCT nazwa, AVG(zarobki)AS "sredniZarobek", AVG(zarobkiMax) AS "gornGranica",AVG(zarobkiMin) AS "dolnaGranica" FROM (SELECT praca.idOsoby,praca.zarobki,zawody.nazwa,(praca.zarobki-praca.zarobki*0.03) AS zarobkiMin,(praca.zarobki+praca.zarobki*0.03) AS zarobkiMax FROM praca
INNER JOIN zawody ON praca.idZawodu = zawody.id) AS T
WHERE nazwazawodu LIKE(nazwa)) AS T2)<(SELECT pensja_min FROM zawody WHERE nazwa LIKE (nazwazawodu)) THEN
SELECT nazwa, sredniZarobek, gornaGranica FROM (SELECT DISTINCT nazwa, AVG(zarobki)AS "sredniZarobek", AVG(zarobkiMax) AS "gornaGranica",AVG(zarobkiMin) AS "dolnaGranica" FROM (SELECT praca.idOsoby,praca.zarobki,zawody.nazwa,(praca.zarobki-praca.zarobki*0.03) AS zarobkiMin,(praca.zarobki+praca.zarobki*0.03) AS zarobkiMax FROM praca
INNER JOIN zawody ON praca.idZawodu = zawody.id) AS T
WHERE nazwazawodu LIKE(nazwa)) AS T2;

ELSE 
SELECT nazwa, sredniZarobek FROM (SELECT DISTINCT nazwa, AVG(zarobki)AS "sredniZarobek", AVG(zarobkiMax) AS "gornnaGranica",AVG(zarobkiMin) AS "dolnaGranica" FROM (SELECT praca.idOsoby,praca.zarobki,zawody.nazwa,(praca.zarobki-praca.zarobki*0.03) AS zarobkiMin,(praca.zarobki+praca.zarobki*0.03) AS zarobkiMax FROM praca
INNER JOIN zawody ON praca.idZawodu = zawody.id) AS T
WHERE nazwazawodu LIKE(nazwa)) AS T2;

END IF;



  END$$
DELIMITER ;






ALTERNATYWA Z LAPLACEAM
#-------------------------------------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS Zad9L3Vol2 $$
CREATE PROCEDURE Zad9L3Vol2 (IN nazwazawodu VARCHAR(255))
BEGIN
SET @IDzawo= (SELECT id FROM zawody WHERE nazwa LIKE (nazwazawodu));
SET @najwZar= (SELECT zarobki FROM(SELECT praca.zarobki AS zarobki,zawody.nazwa,praca.idZawodu FROM praca
INNER JOIN zawody ON praca.idZawodu = zawody.id WHERE nazwa LIKE (nazwazawodu) GROUP BY zarobki DESC LIMIT 1) AS T);
SET @najmZar= (SELECT zarobki FROM(SELECT praca.zarobki AS zarobki,zawody.nazwa,praca.idZawodu FROM praca
INNER JOIN zawody ON praca.idZawodu = zawody.id WHERE nazwa LIKE (nazwazawodu) GROUP BY zarobki LIMIT 1) AS T);
                                   
                                   
SET @deltaF = @najwZar-@najmZar;
#tu laplace czynnik jest liczony
#------------------------------------------------------
SET @U1 = (SELECT RAND() - 0.5);
SET @u=0;
SET @e=2;
SET @b=@deltaF/@e;
SET @czynnik_Laplacea =  (SELECT(@u-@b* SIGN(@U1) * LN(1-2*ABS(@U1))));

#-------------------------------------------------------

SET @sreniZarobek = (SELECT DISTINCT AVG(zarobki)FROM (SELECT praca.idOsoby,praca.zarobki,zawody.nazwa,(praca.zarobki-praca.zarobki*0.03) AS zarobkiMin,(praca.zarobki+praca.zarobki*0.03) AS zarobkiMax FROM praca
INNER JOIN zawody ON praca.idZawodu = zawody.id) AS T
WHERE @nazwazawodu LIKE(nazwa));

SET @wynik= @czynnik_Laplacea+@sreniZarobek ;

#BLOKADA PRZED WIDELKAMI
#IF @wynik<@najmZar THEN 
#SELECT @najmZar; 
#ELSEIF @wynik>@najwZar THEN 
#SELECT @najwZar; 
#ELSE
	 SELECT @wynik; 
#END IF;

  END$$
DELIMITER ;













		Dodaje LaPlacea
#----------------------------------------------------------------
rand laplace u b - floaty
BEGIN
SET U1 = (SELECT RAND() - 0.5);
SET wynik= (SELECT(u-b*SIGN(U1) * LN(1-2*ABS(U1))) );
return wynik;
END



deltaF - roznica miedzy najm a najw.
SET czynnik Laplacea = rand_laplace(0,deltaF.e);
