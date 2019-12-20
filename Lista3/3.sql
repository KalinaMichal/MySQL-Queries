
#ZADANIE3
CREATE TABLE zawody (

    	id int AUTO_INCREMENT NOT NULL,
    	nazwa varchar(20) NOT NULL,
    	pensja_min INT NOT NULL,
        pensja_max INT NOT NULL,
        PRIMARY KEY(id)

    );



CREATE TABLE praca (

    	id_zawodu INT NOT NULL,
    	id_osoby INT NOT NULL,
    	zarobki INT NOT NULL

    );



 DROP PROCEDURE IF EXISTS addJob;

DELIMITER $$
CREATE PROCEDURE addJob()
BEGIN

	DECLARE counter INT;
	DECLARE randomNum INT;
	SET counter = 1;

	WHILE counter <= 10 DO

		SET randomNum = FLOOR(1 + (RAND() * (10-1)));

			INSERT INTO zawody(nazwa, pensja_min, pensja_max)
				VALUES ((ELT(counter,'Nauczyciel','Programista','Sprzedawca','Arhitekt','Policjant','Budowlaniec','Elektryk','Ochroniarz','Mechatronik','Kierowca')),
					(ELT(counter,'2880','11500','2500','3880','3630','2330','3220','2100','4550','2490')),
					(ELT(counter,'4190','17000','3740','6240','5450','3750','4780','2790','8010','4290')));


		SET counter = counter + 1;

	END WHILE;
END; $$
DELIMITER ;


DROP PROCEDURE IF EXISTS praca_cursor;

 DELIMITER $$
 CREATE PROCEDURE praca_cursor()
BEGIN
	DECLARE done INT DEFAULT FALSE;
	DECLARE osobaID, zawodID, pensja, pensjaMin, pensjaMax INT;


	DECLARE addData CURSOR FOR( SELECT FLOOR(RAND()*(50 - 32 + 1) + 32) AS idZawodu, osoba.id FROM osoba GROUP BY osoba.id);

	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

	OPEN addData;
	read_loop: LOOP
		FETCH addData INTO zawodID, osobaID;

		IF done THEN LEAVE read_loop;
		END IF;

		SET pensjaMin = (SELECT pensja_min FROM zawody WHERE id = zawodID);
		SET pensjaMax = (SELECT pensja_max FROM zawody WHERE id = zawodID);
		SET pensja = FLOOR(RAND()*(pensjaMax - pensjaMin + 1) + pensjaMin);


		INSERT INTO praca(idZawodu, idOsoby, zarobki)
			VALUES(zawodID, osobaID, pensja);

	END LOOP;

	CLOSE addData;
END; $$
DELIMITER ;

CALL addJob();
CALL praca_cursor();
SELECT * FROM zawody;
SELECT * FROM praca;