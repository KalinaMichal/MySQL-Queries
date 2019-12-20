#zadanie5
CREATE TABLE hasla (
id_osoby int,
haslo varchar(50)
);

insert into hasla (id_osoby, haslo) VALUE (3, md5('haslo1'));
insert into hasla (id_osoby, haslo) VALUE (5, md5('123'));

DELIMITER $$
DROP PROCEDURE IF EXISTS zad5hasla $$
CREATE PROCEDURE zad5hasla (IN name VARCHAR(20), IN probahaslo varchar(50))
BEGIN

IF md5(probahaslo) = (SELECT e.haslo from hasla e
                        inner join osoba o ON e.id_osoby = o.id
                        where o.imiê = name) then
     select dataUrodzenia from osoba where name = imiê;
    else select (NOW() - INTERVAL FLOOR(RAND() * (10950 - 6570 + 1) + 6570) DAY) AS "losowaData";
   END IF;

END$$

call zad5hasla("Benny", "haslo1")
call zad5hasla("Benny", "haslo12")