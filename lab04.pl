pisz_list�([]).
pisz_list�([H|T]):- write(H), write(' '), pisz_list�(T).

nele�y(E, [E|_]).
nale�y(E, [_|T]) :-
    nale�y(E, T).

d�ugo��_listy([], 0).
d�ugo��_listy([_ | T], Len) :-
    d�ugo��_listy(T, LenT),
    Len is LenT + 1.

merge([], [], []).
merge([], X, X).
merge([X|T1], L2, [X|L3]):- merge(T1, L2, L3).

push(E, [], [E]).
push(E, [H | T], [H | Result]) :-
    push(E, T, Result).

delete(E, [E | T], T).
delete(E, [H | T], [H | Result]) :-
    delete(E, T, Result).

ostatni(E, [E]).
ostatni(E, [_ | T]) :-
    ostatni(E, T).

pocz�tek([], _).
pocz�tek([X|T1], [X|T2]) :-
    pocz�tek(T1, T2).

dopasuj([], [], []).
dopasuj([X|TL], [n|TW], [X|TZ]) :-
    integer(X),
    dopasuj(TL, TW, TZ).
dopasuj([X|TL], [a|TW], [X|TZ]) :-
    atom(X),
    dopasuj(TL, TW, TZ).
dopasuj([X|TL], [l|TW], [X|TZ]) :-
    is_list(X),
    dopasuj(TL, TW, TZ).
dopasuj([X|TL], [.*|TW], [X|TZ]) :-
    dopasuj(TL, TW, TZ).
dopasuj(L, [*|TW], Z) :-
    dopasuj(L, TW, Z).
dopasuj([X|TL], [H|TW], TZ) :-
    X \= H,
    dopasuj(TL, [H|TW], TZ).
