#zadanie 16	
CREATE OR REPLACE VIEW widok16 AS
	SELECT DISTINCT nazwa, COUNT(nazwa) from sport  GROUP BY nazwa UNION ALL
	SELECT DISTINCT nazwa, COUNT(nazwa) from inne GROUP BY nazwa  UNION ALL
	SELECT DISTINCT nazwa, COUNT(nazwa) from nauka GROUP BY nazwa;
SELECT * FROM widok16;
























	
CREATE OR REPLACE VIEW zad16 AS
SELECT DISTINCT hobby.typ AS "typ hobby", COUNT(typ) AS "Ilosc osob ktora sie tym zajmuje"
FROM hobby




CREATE OR REPLACE VIEW zad16pom AS
select DISTINCT Count(hobby.id) AS "ilosc" ,typ , id from hobby
GROUP BY hobby.id