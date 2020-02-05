db.osoba.find({zainteresowania: "psy" },{"imie":1,"nazwisko":1,"Obywatelstwo":1,"wiek":1,_id:0}).sort( { wiek: 1 } ).pretty()
