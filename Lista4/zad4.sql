
//*** ZADANIE 4 ***//
db.osoba.insert ({imie : "Tamara", nazwisko : "Nikosicko", Obywatelstwo : ["Serbija","CrnaGora"]})
mongoimport --jsonArray  -d MDBHobby -c osoba zadanie4.json
db.osoba.find().pretty()
db.osoba.insert({"imie" : "Pavel","nazwisko" : "Argonov","Obywatelstwo" : [{"Rosyja" : [{"podamiot_federalny" : "Kaliningrad","miasto" : "Wolodino"}]},{"Niemcy" : [{"bundestag" : "Bawaria","miasto" : "Monachium",}]}]})
db.osoba.insert ({imie : "Tamara", nazwisko : "Nikosicko", Obywatelstwo : ["Serbija","CrnaGora"]})
db.osoba.insert ([{imie : "Denis", nazwisko : "Kalinic", Obywatelstwo : ["Bosnia&Harcegovina","CrnaGora"]},{imie : "Nikola", nazwisko : "Tavelic", Obywatelstwo : ["Chorwacja","CrnaGora"]},{imie : "Milka", nazwisko : "Kalinic", Obywatelstwo : ["Slowenia","Chorwacja"]},{imie : "Luka", nazwisko : "Brajanovic", Obywatelstwo : ["Chorwacja","Bosnia"]},{imie : "Andrea", nazwisko : "Malunkova", Obywatelstwo : ["Macedonia_Polnocna","Bulgaria"], wiek : "19"},{imie : "Patrik", nazwisko : "Nikosicko", Obywatelstwo : ["Kosovo","Albania"]},{imie : "Ivona", nazwisko : "Draceva", Obywatelstwo : "Bosnia&Harcegovina", wiek : "18"}])

db.osoba.insert({"imie" : "Dimitrij","nazwisko" : "Argonov","Obywatelstwo" : [{"Rosyja" : {"podamiot_federalny" : "Obwod_Krymski","miasto" : "Sewastopol"}},"Belarus"],wiek : "20", zainteresowania: ["Karate","Surival"]})
db.osoba.insert ({imie : "Jan", nazwisko : "Nowak", Obywatelstwo : "Polska"})

db.osoba.insert ({imie : "Mo", nazwisko : "Farah", Obywatelstwo : "Kenia",zainteresowania: "Lekkoatletyka"})
db.osoba.insert ({imie : "Jackob", nazwisko : "Ingebrugsten", Obywatelstwo : "Norwegia",zainteresowania: "Lekkoatletyka"})
db.osoba.insert ({imie : "Jackob_Junior", nazwisko : "Ingebrugsten", Obywatelstwo : "Norwegia",zainteresowania: "Lekkoatletyka"})
db.osoba.insert ({imie : "Jakub", nazwisko : "Krzewina", Obywatelstwo : "Polska",zainteresowania: "Lekkoatletyka"})
db.osoba.insert ({imie : "Ewa", nazwisko : "Swoboda", Obywatelstwo : "Polska",zainteresowania: "Lekkoatletyka"})
db.osoba.insert ({imie : "Marcin", nazwisko : "Gordat", Obywatelstwo : "Polska",zainteresowania: ["hokej","koszykowka"]})

db.osoba.insert ({imie : "Marcin", nazwisko : "Gordat", Obywatelstwo : "Polska",zainteresowania: ["narciarstwo","strzelectwo"]})


db.osoba.insert ({imie : "Nikola", nazwisko : "Nazarenko", Obywatelstwo : "Macedonia_polnocna",wiek: "20",zainteresowania: "psy"})
db.osoba.insert ({imie : "Anna", nazwisko : "terjesic", Obywatelstwo : "Serbia",wiek: "12",zainteresowania: "psy"})
db.osoba.insert ({imie : "Katarina", nazwisko : "Monur", Obywatelstwo : "Albania",wiek: "18",zainteresowania: "psy"})
db.osoba.insert ({imie : "Dena", nazwisko : "Juvchanko", Obywatelstwo : "Ukraina",wiek: "22",zainteresowania: "psy"})
db.osoba.insert ({imie : "Thomas", nazwisko : "Shultz", Obywatelstwo : "Austria",wiek: "30",zainteresowania: "psy"})
db.osoba.insert ({imie : "Milca", nazwisko : "Dedeic", Obywatelstwo : "Serbia",wiek: "23",zainteresowania: "psy"})
db.osoba.insert ({imie : "Ivona", nazwisko : "Jovic", Obywatelstwo : "CrnaGora",wiek: "24",zainteresowania: "psy"})
db.osoba.insert ({imie : "Luka", nazwisko : "Mitrovic", Obywatelstwo : "Serbia",wiek: "40",zainteresowania: "psy"})

#tu nizej jest rzecz zagniezdzona
db.osoba.insert ({imie : "Luka", nazwisko : "Mitrovic", Obywatelstwo : "Serbia",posiadaniezwierzeta: [{imie:"Rafal", gatunek:"kon"},{imie:"Ropuch",gatunek:"zaba"}]wiek: "40",zainteresowania: "psy"})
db.osoba.insert ({imie : "Andrea", nazwisko : "Rakicic", Obywatelstwo : "Serbia",posiadaniezwierzeta: [{imie:"Rafal", gatunek:"kon"},{imie:"Ropuch",gatunek:"zaba"}]wiek: "40",zainteresowania: "psy"})
db.osoba.insert ({imie : "Milka", nazwisko : "Mitrovic", Obywatelstwo : "Serbia",posiadaniezwierzeta: [{imie:"Rafal", gatunek:"kon"},{imie:"Ropuch",gatunek:"zaba"}]wiek: "40",zainteresowania: "psy"})
db.osoba.insert ({imie : "Rena", nazwisko : "Mitrovic", Obywatelstwo : "Serbia",posiadaniezwierzeta: [{imie:"Rafal", gatunek:"kon"},{imie:"Ropuch",gatunek:"zaba"}]wiek: "40",zainteresowania: "psy"})
db.osoba.insert ({imie : "Yvonee", nazwisko : "Holubkova", Obywatelstwo : "Serbia",posiadaniezwierzeta: [{imie:"Rafal", gatunek:"kon"},{imie:"Ropuch",gatunek:"zaba"}]wiek: "40",zainteresowania: "psy"})
db.osoba.insert ({imie : "Luka", nazwisko : "Petrovic", Obywatelstwo : "Serbia",posiadaniezwierzeta: [{imie:"Rafal", gatunek:"kon"},{imie:"Ropuch",gatunek:"zaba"}]wiek: "40",zainteresowania: "psy"})
