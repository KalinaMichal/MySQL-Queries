#zadanie7	

DELIMITER $$
DROP PROCEDURE IF EXISTS Zad7 $$
CREATE PROCEDURE Zad7(IN NAME VARCHAR(255), IN num int)
 BEGIN
 
DECLARE alfabet VARCHAR(24) DEFAULT 'abcdefghijklmnoprzyv';
countloop: LOOP
IF num > 0 
THEN SET num = num - 1;
IF NAME = "zwierzak" THEN
INSERT INTO zwierzak (name, owner, species, sex, birth) VALUES(SUBSTRING(MD5(RAND()) FROM 1 FOR 8),SUBSTRING(MD5(RAND()) FROM 1 FOR 8),SUBSTRING(MD5(RAND()) FROM 1 FOR 4),SUBSTRING(MD5(RAND()) FROM 1 FOR 1),NOW() - interval rand()*80000 day);
END IF;



IF NAME= "sport" THEN
Set @en = floor(rand()*3 );
if @en=0 then
INSERT INTO sport (nazwa,typ,lokacja) VALUES(SUBSTRING(MD5(RAND()) FROM 1 FOR 8),'druzynowy', SUBSTRING(MD5(RAND()) FROM 1 FOR 8));
end if;
if @en=1 then
INSERT INTO sport (nazwa,typ,lokacja) VALUES(SUBSTRING(MD5(RAND()) FROM 1 FOR 8),'indywidualny', SUBSTRING(MD5(RAND()) FROM 1 FOR 8));
end if;
if @en=2 then
INSERT INTO sport (nazwa,typ,lokacja) VALUES(SUBSTRING(MD5(RAND()) FROM 1 FOR 8),'mieszany', SUBSTRING(MD5(RAND()) FROM 1 FOR 8));
end if;
END IF;

IF NAME= "osoba" THEN
Set @en = floor(rand()*3 );

if @en=0 then
INSERT INTO osoba (imiê,nazwisko,dataUrodzenia,plec) VALUES(SUBSTRING(MD5(RAND()) FROM 1 FOR 6),SUBSTRING(MD5(RAND()) FROM 1 FOR 6),DATE_SUB(NOW()- interval rand()*55000 day, INTERVAL 18 YEAR),"m");
end if;
if @en=1 then
INSERT INTO osoba (imiê,nazwisko,dataUrodzenia,plec) VALUES(SUBSTRING(MD5(RAND()) FROM 1 FOR 6),SUBSTRING(MD5(RAND()) FROM 1 FOR 6),DATE_SUB(NOW()- interval rand()*55000 day, INTERVAL 18 YEAR),"f");
end if;
END IF;

IF NAME= "nauka" THEN
INSERT INTO nauka (nazwa,lokacja) VALUES(SUBSTRING(MD5(RAND()) FROM 1 FOR 8),SUBSTRING(MD5(RAND()) FROM 1 FOR 7));
END IF;

IF NAME= "inne" THEN
Set @en = floor(rand()*2 );
if @en=0 then
INSERT INTO inne (nazwa,lokacja,towarzysze) VALUES(SUBSTRING(MD5(RAND()) FROM 1 FOR 5),SUBSTRING(MD5(RAND()) FROM 1 FOR 5),true);
end if;
if @en=1 then
INSERT INTO inne (nazwa,lokacja,towarzysze) VALUES(SUBSTRING(MD5(RAND()) FROM 1 FOR 5),SUBSTRING(MD5(RAND()) FROM 1 FOR 5),false);
end if;

END IF;

IF NAME= "hobby" THEN
Set @en = floor(rand()*3 );
if @en=0 then
INSERT INTO hobby (id,osoba,typ) VALUES((SELECT id FROM sport ORDER BY RAND() LIMIT 1),(SELECT id FROM osoba ORDER BY RAND() LIMIT 1),'sport');
end if;
if @en=1 then
INSERT INTO hobby (id,osoba,typ) VALUES((SELECT id FROM nauka ORDER BY RAND() LIMIT 1),(SELECT id FROM osoba ORDER BY RAND() LIMIT 1),'nauka');
end if;
if @en=2 then
INSERT INTO hobby (id,osoba,typ) VALUES((SELECT id FROM inne ORDER BY RAND() LIMIT 1),(SELECT id FROM osoba ORDER BY RAND() LIMIT 1),'inne');
end if;
END IF;
ITERATE countloop;

ELSE LEAVE countloop;
END IF;
END LOOP countloop;
SET @countNumber = num;
 
  END$$
DELIMITER ;