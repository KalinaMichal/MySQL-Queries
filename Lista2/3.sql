#zadanie3		
			
CREATE TABLE zwierzak(
  name    VARCHAR(20),
  owner   VARCHAR(20),
  species VARCHAR(20),
  sex     CHAR(1),
  birth   DATE,
  death   DATE
);

SELECT * FROM pet;

INSERT INTO zwierzak SELECT * FROM menagerie.pet
INSERT INTO osoba(imiê) SELECT pet.owner FROM menagerie.pet
UPDATE osoba SET dataUrodzenia= NOW() - interval rand()*80000 day

-----------------------------------------------


DELIMITER $$
DROP PROCEDURE IF EXISTS Zad3 $$
CREATE PROCEDURE Zad3()
BEGIN
Set @en = floor(rand()*2 );
if @en=0 then
UPDATE osoba SET plec= 'm';
end if;
if @en=1 then
UPDATE osoba SET plec= 'f';
end if;
END$$
DELIMITER ;

