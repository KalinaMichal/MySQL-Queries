#ZADANIE2


#-------------------------------------------
SELECT plec FROM osoba WHERE imiê LIKE 'A%'
#-------------------------------------------
SELECT * FROM `sport` GROUP BY nazwa
#-------------------------------------------
CREATE OR REPLACE VIEW zad2aL3 AS
SELECT id AS idA, lokacja AS lokacjaA
FROM sport;

CREATE OR REPLACE VIEW zad2bL3 AS
SELECT id AS idB, lokacja AS lokacjaB
FROM sport;

CREATE OR REPLACE VIEW zad2L3 AS
SELECT DISTINCT zad2aL3.idA, zad2bL3.idB
FROM zad2aL3, zad2bL3
WHERE (zad2aL3.lokacjaA like zad2bL3.lokacjaB) AND (zad2aL3.idA < zad2bL3.idB)
#-------------------------------------------
SELECT * FROM osoba WHERE YEAR(dataUrodzenia) < 2000
#--------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS Zad2L3 $$
CREATE PROCEDURE Zad2L3 ()
BEGIN

SET @idH=(SELECT id FROM 
(SELECT id, COUNT(id) AS "ilosc",typ  FROM hobby GROUP BY id  
ORDER BY ilosc  DESC LIMIT 1) AS T);


SET @typH=(SELECT typ  FROM
(SELECT id, COUNT(id) AS "ilosc",typ  FROM hobby GROUP BY id  
ORDER BY ilosc DESC LIMIT 1) AS T);

SELECT nazwa FROM sport WHERE id=@idH;
SELECT nazwa FROM nauka WHERE id=@idH;
SELECT nazwa FROM inne WHERE id=@idH;

END$$
DELIMITER ;
#-------------------------------------------
SELECT imie FROM (SELECT osoba.imiê AS imie, zwierzak.species AS gat, osoba.dataUrodzenia AS dat FROM osoba 
INNER JOIN zwierzak ON osoba.id=zwierzak.ID) AS T
WHERE gat="dog" GROUP BY dat LIMIT 1
#-------------------------------------------


1 T 
2 N
3 N
4 T
5 Tylko hobby bo innne mamy indeks po nazwie Ogolnie to nie
