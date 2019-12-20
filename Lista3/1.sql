#ZADANIE1
#indeksy zuzywaja miejsce i spowalniaja selecty
#uzywam btree bo szybkie porownywanie

CREATE INDEX indeks_imiê ON osoba (imiê);
CREATE INDEX indeks_dataUrodzenia ON osoba (dataUrodzenia);
CREATE INDEX indeks_IdSport ON sport (id,nazwa);
CREATE INDEX indeks_IdInne ON inne (nazwa, id);
CREATE INDEX indeks_IdHobby ON hobby (osoba,id,typ); #istnial wczesniej