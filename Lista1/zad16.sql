#szesnaste 
CREATE OR REPLACE VIEW zad16a AS
SELECT owner ownerA, name nameA, species speciesA
FROM pet

CREATE OR REPLACE VIEW zad16b AS
SELECT owner ownerB, name nameB, species speciesB
FROM pet

CREATE OR REPLACE VIEW zad16 AS
SELECT DISTINCT zad16a.ownerA, zad16b.ownerB
FROM zad16a, zad16b
WHERE (zad16a.speciesA like zad16b.speciesB) AND (zad16a.ownerA < zad16b.ownerB )
