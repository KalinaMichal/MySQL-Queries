db.osoba.insert ({imie : "Marcin", nazwisko : "Gordat", Obywatelstwo : "Polska",zainteresowania: ["hokej","koszykowka"]})
db.osoba.insert ({imie : "Marcin", nazwisko : "Gordat", Obywatelstwo : "Polska",zainteresowania: ["hokej","koszykowka"]})
db.osoba.find({ $or:[ {'zainteresowania.0' : "koszykowka",'zainteresowania.1' : "hokej"}, {'zainteresowania.1' : "koszykowka",'zainteresowania.0' : "hokej"} ]}).pretty()
db.osoba.deleteMany({ $or:[ {'zainteresowania.0' : "koszykowka",'zainteresowania.1' : "hokej"}, {'zainteresowania.1' : "koszykowka",'zainteresowania.0' : "hokej"} ]})

