kwadrat(X, Wynik):- X>0, Wynik is X*X.
kolo(R, Wynik):- R>0, Wynik is pi*R*R.
srednia(X, Y, Wynik):- Wynik is (X+Y)/2.

k³amie(lew, poniedzia³ek).
k³amie(lew, wtorek).
k³amie(lew, œroda).
k³amie(nosoro¿ec, czwartek).
k³amie(nosoro¿ec, pi¹tek).
k³amie(nosoro¿ec, sobota).

wczoraj(poniedzia³ek, wtorek).
wczoraj(wtorek, œroda).
wczoraj(œroda, czwartek).
wczoraj(czwartek, pi¹tek).
wczoraj(pi¹tek, sobota).
wczoraj(sobota, niedziela).
wczoraj(niedziela, poniedzia³ek).

prawda(nosoro¿ec, poniedzia³ek).
prawda(nosoro¿ec, wtorek).
prawda(nosoro¿ec, œroda).
prawda(nosoro¿ec, niedziela).
prawda(lew, czwartek).
prawda(lew, pi¹tek).
prawda(lew, sobota).
prawda(lew, niedziela).

zad4(Dzieñ):- k³amie(nosoro¿ec, X), wczoraj(X, DzieñX), prawda(nosoro¿ec, DzieñX), (k³amie(lew, DzieñX) ->  
Dzieñ is DzieñX, !; k³amie(lew, Y), wczoraj(Y, Dzieñ), prawda(lew, Dzieñ)).

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
chlopiec("Bogumi³",2).
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
writeln("Rozwi¹zanie:"),
writeln(Z1 - Y1),
writeln(Z2 - Y2),
writeln(Z3 - Y3),
writeln(Z4 - Y4),nl,fail.



% Definicje zmiennych
mê¿czyzna(andrzej).
mê¿czyzna(dariusz).
mê¿czyzna(mateusz).
mê¿czyzna(micha³).
mê¿czyzna(tomasz).
mê¿czyzna(wojciech).

kobieta(agnieszka).
kobieta(ewa).
kobieta(ró¿a).
kobieta(ania).
kobieta(alicja).
kobieta(ola).

samochód(bmw).
samochód(fiat).
samochód(ford).
samochód(mercedes).
samochód(opel).
samochód(renault).

kolor(bia³y).
kolor(czerwony).
kolor(granatowy).
kolor(zielony).
kolor(¿ó³ty).
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
hobby(p³ywanie).
hobby(rowery).
hobby(¿eglarstwo).

