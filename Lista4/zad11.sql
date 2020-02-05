db.osoba.insert ({imie : "Marcin", nazwisko : "Gordat", Obywatelstwo : "Polska",zainteresowania: ["narciarstwo","strzelectwo"]})
db.osoby.updateMany({zainteresowania: {$all: ["narciarstwo", "strzelectwo"]}},{$set: {zainteresowania: "biatlon"}})
