CREATE USER 'michal88'@'localhost' IDENTIFIED BY '880025';
GRANT SELECT ON hobby.* TO 'michal88'@'localhost'
GRANT INSERT ON hobby.* TO 'michal88'@'localhost'
GRANT UPDATE ON hobby.* TO 'michal88'@'localhost'

REVOKE DROP  ON hobby.* FROM 'michal88'@'localhost'
REVOKE CREATE  ON hobby.* FROM 'michal88'@'localhost'
REVOKE ALTER ON hobby.* FROM 'michal88'@'localhost'















--------------------------------------------------------------------------

CREATE USER 'michal88’@’localhost'@'localhost' IDENTIFIED BY '880025';
GRANT SELECT ON hobby.* TO 'michal88’@’localhost'@'localhost'
GRANT INSERT ON hobby.* TO 'michal88’@’localhost'@'localhost'
GRANT UPDATE ON hobby.* TO 'michal88’@’localhost'@'localhost'

REVOKE DROP  ON hobby.* FROM 'michal88’@’localhost'@'localhost'
REVOKE CREATE  ON hobby.* FROM 'michal88’@’localhost'@'localhost'
REVOKE ALTER ON hobby.* FROM 'michal88’@’localhost'@'localhost'
