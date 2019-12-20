
#zadani4 - raczej ta zla
ALTER TABLE osoba ADD COLUMN nazwisko varchar(50) after imiê
ALTER TABLE zwierzak ADD COLUMN (ID int NOT NULL AUTO_INCREMENT, PRIMARY KEY(id))
DROP TABLE owner

--------------------------------------------------------------------------

#zadanie4 ver2 - ta dobra wersja
ALTER TABLE osoba ADD COLUMN nazwisko varchar(50) after imiê
ALTER TABLE zwierzak ADD COLUMN (ID int )
UPDATE zwierzak SET ID = (select distinct id from osoba where owner = imiê ORDER BY id DESC LIMIT 1)
DROP TABLE owner













DELIMITER $$
DROP PROCEDURE IF EXISTS Zad4 $$
CREATE PROCEDURE Zad4()
 BEGIN
 UPDATE zwierzak SET ID =id.osoba WHERE zwierzak.name = osoba.imiê;

  END$$
DELIMITER ;




#