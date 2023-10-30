rodzic(zofia, marcin).
rodzic(andrzej, marcin).
rodzic(andrzej, kasia).
rodzic(marcin, ania).
rodzic(marcin, krzy�).
rodzic(krzy�, miko�aj).
kobieta(zofia).
kobieta(kasia).
kobieta(ania).
m�czyzna(andrzej).
m�czyzna(marcin).
m�czyzna(krzy�).
m�czyzna(miko�aj).
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

szcz�liwy(X) :- rodzic(X, _).

ma_siostr�(X) :- siostra(_, X).

dwoje_dzieci(X) :- rodzic(X, Y), siostra(Y, _).

wnuk(X, Z) :- rodzic(Z, Y), rodzic(Y, X).

ciotka(X, Y) :- rodzic(Z, Y), siostra(Z, X).

przodek(X, Y):- rodzic(X, Y); (rodzic(X, Z), przodek(Z, Y)).

nast�pca(Y, X) :- przodek(X, Y).




