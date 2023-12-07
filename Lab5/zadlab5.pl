kwadrat(X, Wynik):- X>0, Wynik is X*X.
kolo(R, Wynik):- R>0, Wynik is pi*R*R.
srednia(X, Y, Wynik):- Wynik is (X+Y)/2.

k�amie(lew, poniedzia�ek).
k�amie(lew, wtorek).
k�amie(lew, �roda).
k�amie(nosoro�ec, czwartek).
k�amie(nosoro�ec, pi�tek).
k�amie(nosoro�ec, sobota).

wczoraj(poniedzia�ek, wtorek).
wczoraj(wtorek, �roda).
wczoraj(�roda, czwartek).
wczoraj(czwartek, pi�tek).
wczoraj(pi�tek, sobota).
wczoraj(sobota, niedziela).
wczoraj(niedziela, poniedzia�ek).

prawda(nosoro�ec, poniedzia�ek).
prawda(nosoro�ec, wtorek).
prawda(nosoro�ec, �roda).
prawda(nosoro�ec, niedziela).
prawda(lew, czwartek).
prawda(lew, pi�tek).
prawda(lew, sobota).
prawda(lew, niedziela).

zad4(Dzie�):- k�amie(nosoro�ec, X), wczoraj(X, Dzie�X), prawda(nosoro�ec, Dzie�X), (k�amie(lew, Dzie�X) ->  
Dzie� is Dzie�X, !; k�amie(lew, Y), wczoraj(Y, Dzie�), prawda(lew, Dzie�)).

delta(A, B, C, Wynik) :-
    Wynik is B * B - 4 * A * C.

rownanieKwadratowe(A, B, C, X1, X2) :-
    delta(A, B, C, Delta),
    (Delta < 0 ->
        X1 is 0,
        X2 is 0,
        write("brak rozwiazan")
        ;
        X1 is (-B - sqrt(Delta)) / (2 * A),
        X2 is (-B + sqrt(Delta)) / (2 * A)
    ).

zadanie6() :-
    rownanieKwadratowe(0.5, 1.5, -3.5, X1, X2),
    print(X1),
    nl,
    print(X2).

chlopiec("Andrzej",1).
chlopiec("Bogumi�",2).
chlopiec("Cezary",3).
chlopiec("Damian",4).
dziewczyna("Andzia",1).
dziewczyna("Beata",2).
dziewczyna("Celina",3).
dziewczyna("Danusia",4).
pary :-
L=[1,2,3,4],
A = 2,
B = 3,
C = 4,
D = 5,

permutation(L,[X1,X2,X3,X4]),
A*X1+B*X2+C*X3+D*X4 =:= 30,
chlopiec(Y1,X1),
chlopiec(Y2,X2),
chlopiec(Y3,X3),
chlopiec(Y4,X4),
dziewczyna(Z1,1),
dziewczyna(Z2,2),
dziewczyna(Z3,3),
dziewczyna(Z4,4),
writeln("Rozwi�zanie:"),
writeln(Z1 - Y1),
writeln(Z2 - Y2),
writeln(Z3 - Y3),
writeln(Z4 - Y4),nl,fail.



% Definicje zmiennych
m�czyzna(andrzej).
m�czyzna(dariusz).
m�czyzna(mateusz).
m�czyzna(micha�).
m�czyzna(tomasz).
m�czyzna(wojciech).

kobieta(agnieszka).
kobieta(ewa).
kobieta(r�a).
kobieta(ania).
kobieta(alicja).
kobieta(ola).

samoch�d(bmw).
samoch�d(fiat).
samoch�d(ford).
samoch�d(mercedes).
samoch�d(opel).
samoch�d(renault).

kolor(bia�y).
kolor(czerwony).
kolor(granatowy).
kolor(zielony).
kolor(��ty).
kolor(szary).

praca(bank).
praca(hotel).
praca(politechnika).
praca(restauracja).
praca(sad).
praca(szpital).

hobby(czytanie).
hobby(fotografia).
hobby(majsterkowanie).
hobby(p�ywanie).
hobby(rowery).
hobby(�eglarstwo).

