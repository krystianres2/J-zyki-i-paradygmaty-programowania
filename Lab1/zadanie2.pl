% Baza wiedzy o osobach i ich ulubionych sposobach sp�dzania wolnego czasu
person(john, 22, football).
person(annie, 30, reading).
person(tom, 30, movies).
person(mark, 42, basketball).

% Regu�a por�wnuj�ca wiek
older(X, Y) :- person(X, AgeX, _), person(Y, AgeY, _), AgeX > AgeY.
younger(X, Y) :- person(X, AgeX, _), person(Y, AgeY, _), AgeX < AgeY.
sameAge(X, Y) :- person(X, AgeX, _), person(Y, AgeY, _), AgeX =:= AgeY, X\=Y.
