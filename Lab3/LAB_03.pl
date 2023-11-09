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

d�ugo��(kontener1, 20).
szeroko��(kontener1,30).
wysoko��(kontener1, 15).
d�ugo��(kontener2, 25).
szeroko��(kontener2,9).
wysoko��(kontener2, 10).
obj�to��(Kontener, Obj�to��) :-
    d�ugo��(Kontener, D�ugo��),
    szeroko��(Kontener, Szeroko��),
    wysoko��(Kontener, Wysoko��),
    Obj�to�� is D�ugo�� * Szeroko�� * Wysoko��.

nwd(X,X,X).
nwd(X,Y,D):- X<Y, Y1 is Y-X, nwd(X,Y1,D).
nwd(X,Y,D):- Y<X, nwd(Y,X,D).
