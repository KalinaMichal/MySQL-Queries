
#zadanie 11											
DROP trigger IF exists zad11;
DELIMITER $$
CREATE TRIGGER zad11 AFTER INSERT ON hobby
FOR EACH ROW
BEGIN
IF NEW.typ = 'sport' THEN
insert into sport (nazwa, typ, lokacja) values ('dowolny', 'dru¿ynowy','dowolna');
END IF;
IF NEW.typ = 'nauka' THEN
INSERT INTO nauka (nazwa, lokacja) values ('dowolny', 'dowolna');
ELSE
INSERT INTO inne (nazwa, towarzysze, lokacja) values ('dowolny', true,'dowolna');
END IF;
END$$
DELIMITER ;