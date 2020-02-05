CREATE DATABASE menagerie
USE menagerie


#drop the pet table if it exists, then recreate it

DROP TABLE IF EXISTS pet;
CREATE TABLE pet
(
  name    VARCHAR(20),
  owner   VARCHAR(20),
  species VARCHAR(20),
  sex     CHAR(1),
  birth   DATE,
  death   DATE
);

SELECT * FROM pet;

INSERT INTO pet (name, owner, species, sex, birth) VALUES ('Fluffy','Harold','cat','f','1993-02-04');
INSERT INTO pet (name, owner, species, sex, birth) VALUES ('Claws'	,'Gwen',	'cat',	'm',	'1994-03-17');
INSERT INTO pet (name, owner, species, sex, birth) VALUES ('Buffy'	,'Harold',	'dog',	'f',	'1989-05-13');
INSERT INTO pet (name, owner, species, sex, birth) VALUES ('Fang'	,'Benny',	'dog',	'm',	'1990-08-27');
INSERT INTO pet (name, owner, species, sex, birth, death) VALUES ('Bowser'	,'Diane',	'dog',	'm',	'1979-08-31', '1995-07-29');
INSERT INTO pet (name, owner, species, sex, birth) VALUES ('Chirpy'	,'Gwen',	'bird',	'f',	'1998-09-11');
INSERT INTO pet (name, owner, species, birth) VALUES ('Whistler'	,'Gwen',	'bird',	'1997-12-09');
INSERT INTO pet (name, owner, species, sex, birth) VALUES ('Slim'	,'Benny',	'snake',	'm',	'1996-04-29');


INSERT INTO pet VALUES ('Puffball','Diane','hamster','f','1999-03-30',NULL);


# drop the event table if it exists, then recreate it

DROP TABLE IF EXISTS event;

CREATE TABLE event
(
  name   VARCHAR(20),
  date   DATE,
  type   VARCHAR(15),
  remark VARCHAR(255)
);

INSERT INTO event (name, date, type,remark) VALUES ('Fluffy',	'1995-05-15',	'litter',	'4 kittens, 3 female, 1 male')


