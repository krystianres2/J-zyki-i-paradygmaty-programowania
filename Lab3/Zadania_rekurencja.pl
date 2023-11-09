silnia(0,1).
silnia(N, Wynik):- N>0, NewN is N-1, silnia(NewN, NewWynik), Wynik is N*NewWynik.
fib(0,0).
fib(1,1).
fib(N, Wynik):-  N>1, NewN is N-1, NewNewN is N-2, fib(NewN, Wynik1), fib(NewNewN ,Wynik2), Wynik is Wynik1+Wynik2.
pow(_, 0,1).
pow(A, B, C):- B>0, B1 is B-1, pow(A, B1, C1), C is A*C1.

warunek(N):- (N>0 -> write('N wieksze od zera'), write('N mniejsze od zera')).

move(1,X,Y,_) :-
   write('Move top disk from '), write(X), write(' to '), write(Y), nl.
move(N,X,Y,Z) :-
   N>1,
   M is N-1,
   move(M,X,Z,Y),
   move(1,X,Y,_),
   move(M,Z,Y,X).
