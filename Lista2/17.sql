#zadanie17
CREATE OR REPLACE VIEW viewZ17A AS
SELECT imiê, nazwa
FROM osoba INNER JOIN hobby ON osoba.id = hobby.osoba INNER JOIN sport ON hobby.id = sport.id AND hobby.typ = 'sport'
UNION
SELECT imiê, nazwa
FROM osoba inner join hobby ON osoba.id = hobby.osoba INNER JOIN nauka on hobby.id = nauka.id AND hobby.typ = 'nauka'
UNION
SELECT imiê, nazwa
FROM osoba INNER JOIN hobby ON osoba.id = hobby.osoba INNER JOIN inne on hobby.id = inne.id AND hobby.typ = 'inne'



CREATE OR REPLACE VIEW view17 AS
SELECT *
FROM viewZ17A
UNION
SELECT DISTINCT imiê, name
FROM osoba INNER JOIN zwierzak on osoba.id = zwierzak.ID






















#zadanie 17		//MO¯NA LEPIEJ!
CREATE OR REPLACE VIEW widok17 AS
    SELECT osoba.imiê, osoba.nazwisko, osoba.dataUrodzenia, osoba.plec, hobby.typ AS "hobby", zwierzak.name AS "imiê pupila", zwierzak.species AS "gatunek pupila", zwierzak.sex, zwierzak.birth FROM osoba, hobby, zwierzak
    WHERE hobby.osoba = osoba.id OR zwierzak.ID = osoba.id;
SELECT * FROM widok17;