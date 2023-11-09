rzeczownik(ala).
rzeczownik(jan).
rzeczownik(kot).
rzeczownik(pies).
rzeczownik(rower).
rzeczownik(slonce).

czasownik(ma).
czasownik(jest).
czasownik(lubi).

przymiotnik(super).
przymiotnik(fajny).
przymiotnik(zabawny).
przymiotnik(bojowniczy).


zdanie(A, B, C, D, E):- rzeczownik(A), czasownik(B),przymiotnik(C), przymiotnik(D), rzeczownik(E), write('zdanie poprawne')
,nl ,write(A), write(' '), write(B), write(' '), write(C) , write(' '), write(D), write(' '), write(E).

d³ugoœæ(kontener1, 20).
szerokoœæ(kontener1,30).
wysokoœæ(kontener1, 15).
d³ugoœæ(kontener2, 25).
szerokoœæ(kontener2,9).
wysokoœæ(kontener2, 10).
objêtoœæ(Kontener, Objêtoœæ) :-
    d³ugoœæ(Kontener, D³ugoœæ),
    szerokoœæ(Kontener, Szerokoœæ),
    wysokoœæ(Kontener, Wysokoœæ),
    Objêtoœæ is D³ugoœæ * Szerokoœæ * Wysokoœæ.

nwd(X,X,X).
nwd(X,Y,D):- X<Y, Y1 is Y-X, nwd(X,Y1,D).
nwd(X,Y,D):- Y<X, nwd(Y,X,D).
