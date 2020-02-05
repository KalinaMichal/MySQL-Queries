db.osoba.find({ $or:[ {Obywatelstwo: "Polska", imie: "Jan"}, {'Obywatelstwo.1': {$exists: true}}] },{"Obywatelstwo":1,"imie":1,_id:0}).pretty()
db.osoba.find({ Obywatelstwo: "Polska", imie: "Jan"}).pretty()
db.osoba.find({'Obywatelstwo.1': {$exists: true}}).pretty()
