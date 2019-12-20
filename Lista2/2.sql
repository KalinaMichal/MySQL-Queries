
#zadanie2			
CREATE TABLE osoba (id int NOT NULL AUTO_INCREMENT, imiê varchar(20) NOT NULL, dataUrodzenia date NOT NULL, plec char(1) NOT NULL, PRIMARY KEY(id))
CREATE CREATE TABLE sport(id int NOT NULL AUTO_INCREMENT, nazwa varchar(20)  NOT NULL, typ enum('druzynowy','indywidualny', 'mieszany')  NOT NULL, lokacja varchar(20), PRIMARY KEY(id))
CREATE TABLE nauka(id int NOT NULL AUTO_INCREMENT, nazwa varchar(20) NOT NULL, lokacja varchar(20) NOT NULL,PRIMARY KEY(id))
CREATE TABLE inne(id int NOT NULL AUTO_INCREMENT, nazwa varchar(20)NOT NULL, lokacja varchar(20) NOT NULL, towarzysze boolean NOT NULL DEFAULT true,PRIMARY KEY(id))
CREATE TABLE hobby(id int NOT NULL , osoba int NOT NULL , typ enum('sport', 'nauka', 'inne') NOT NULL,PRIMARY KEY(id,osoba,typ))

#ogr. wieku
DELIMITER $$
CREATE TRIGGER agecheck AFTER INSERT ON osoba FOR EACH ROW 
BEGIN
IF ((NEW.dataUrodzenia + INTERVAL 18 YEAR) > NOW()) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Jestes nieletni";
END IF;
 END$$
DELIMITER ;

#DELETE FROM osoba WHERE (osoba.dataUrodzenia + INTERVAL 18 YEAR) > NOW();
