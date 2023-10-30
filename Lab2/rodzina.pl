rodzic(zofia, marcin).
rodzic(andrzej, marcin).
rodzic(andrzej, kasia).
rodzic(marcin, ania).
rodzic(marcin, krzyœ).
rodzic(krzyœ, miko³aj).
kobieta(zofia).
kobieta(kasia).
kobieta(ania).
mê¿czyzna(andrzej).
mê¿czyzna(marcin).
mê¿czyzna(krzyœ).
mê¿czyzna(miko³aj).
potomek(Y,X):-
	rodzic(X,Y).
matka(X,Y):-
	rodzic(X,Y),
	kobieta(X).
dziadkowie(X,Z):-
	rodzic(X,Y),
	rodzic(Y,Z).
siostra(X,Y):-
	rodzic(Z,X),
	rodzic(Z,Y),
	kobieta(X).

szczêœliwy(X) :- rodzic(X, _).

ma_siostrê(X) :- siostra(_, X).

dwoje_dzieci(X) :- rodzic(X, Y), siostra(Y, _).

wnuk(X, Z) :- rodzic(Z, Y), rodzic(Y, X).

ciotka(X, Y) :- rodzic(Z, Y), siostra(Z, X).

przodek(X, Y):- rodzic(X, Y); (rodzic(X, Z), przodek(Z, Y)).

nastêpca(Y, X) :- przodek(X, Y).




