//*** ZADANIE 3 ***\\
//*WERSJA 1*//
db.gatunek.insert ({nazwa: "pies", min_waga: "", max_waga: "", gama_ubarwienia:"",dlugosc_zycia: ""})
db.gatunek.insert ({nazwa: "pies",rasa:"cocer spaniel", min_waga: "", max_waga: "", gama_ubarwienia:"",dlugosc_zycia: ""})

db.gatunek.insert ({nazwa: "pies",rasa : [{nazwa : "cocer spaniel", , min_waga: "10", max_waga: "15", gama_ubarwienia:"czarny",dlugosc_zycia: "14"},
{nazwa : "Owczarek_niemiecki", , min_waga: "20", max_waga: "40", gama_ubarwienia:"czarny",dlugosc_zycia: "17"}]})

//*WERSJA 2*//
db.zwierzeta.insert({
	gatunek: "pies",
	rasy: [ "jamnik", "buldog", "golden", "bernardyn"],
	minimalnaWaga: 5,
	maksymalnaWaga: 100,
	ubarwienie: ["br¹zowe", "be¿owe", "jasne", "ciemne"],
	œredniaD³ugoœæ¯ycia: 9
})
db.zwierzeta.insert({
	gatunek: "zolw",
	rasy: [ "wodny", "ladowy"],
	minimalnaWaga: 3,
	maksymalnaWaga: 300,
	ubarwienie: ["zielony","czarny"],
	œredniaD³ugoœæ¯ycia: 100
})
db.zwierzeta.insert({
	gatunek: "kangur",
	rasy: [ "bialy","duzy","karlowaty"],
	minimalnaWaga: 20,
	maksymalnaWaga: 110,
	ubarwienie: ["brazowe", "biale", "szare", "czarne"],
	œredniaD³ugoœæ¯ycia: 40
})
db.zwierzeta.insert({
	gatunek: "mucha",
	rasy: [ "bialy","duzy"],
	minimalnaWaga: 1,
	maksymalnaWaga: 2,
	ubarwienie: ["brazowe", "biale", "szare", "czarne"],
	œredniaD³ugoœæ¯ycia: 1
})
db.zwierzeta.insert({
	gatunek: "zaba",
	minimalnaWaga: 2,
	maksymalnaWaga: 5,
	ubarwienie: ["brazowe", "biale", "szare", "czarne"],
	œredniaD³ugoœæ¯ycia: 4
})



