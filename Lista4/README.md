## Table of contents
* [MongoDB Setup](#MongoDB-Setup)
* [Wyswietl kolekcję](#Wyswietl-kolekcję)
* [Pokaz kolekcje](#Pokaz-kolekcje)
* [Usun kolekcję](#Usun-kolekcję)
* [Importuje pliku JSON](#Importuje-pliku-JSON)


## MongoDB Setup
 Usuwanie starej i instalowanie najnowszej wersji Java w systemie Microsoft Windows

```
$ otwieram cmd jako adm
$ E:
$ cd WORK
$ cd MongoDB
$ cd bin
$ net start MongoDB
$ mongod
$ mongo
$
$
$ cd WORK\MongoDB\bin
$ use MDBHobby
```



## Wyswietl kolekcję

```
$ db.zwierzak.find().pretty()
$ db.sport.find()
$ db.osoba.find()

```

## Pokaz kolekcje
```
$ show collections
```


## Usun kolekcję
```
$ db.sport.drop() 
$ db.zwierzak.drop() 
```
## Importuje pliku JSON
```
$ mongoimport --jsonArray  -d DatabaseN -c collectionName /filePath/filename.json
$ mongoimport --jsonArray  -d MDBHobby -c zwierzak daneZwierzak.json
$ mongoimport --jsonArray  -d MDBHobby -c zwierzak zwierzak.json
$ mongoimport --jsonArray  -d MDBHobby -c osoba osoba.json
```

var file = cat('./new.json');     # file name

use testdb                        # db name

var o = JSON.parse(file);         # convert string to JSON

db.forms.insert(o)                # collection name

