/*Wyswietl kolekcjê*/
db.zwierzak.find()
db.sport.find()

/*Pokaz kolekcje*/
show collections

/*Usun kolekcje*/
 db.sport.drop() 
 db.zwierzak.drop() 

//*** ZADANIE 1 ***\\
/*dodaj coœ tam*/
db.zwierzak.insert ({name: "Azor", owner: "Luka", species: "dog", sex: "m", birth: "2018-11-11"})

/*Tutaj importuje plik JSON*/
mongoimport --jsonArray  -d DatabaseN -c collectionName /filePath/filename.json
mongoimport --jsonArray  -d MDBHobby -c zwierzak daneZwierzak.json
mongoimport --jsonArray  -d MDBHobby -c zwierzak zwierzak.json
mongoimport --jsonArray  -d MDBHobby -c osoba osoba.json

