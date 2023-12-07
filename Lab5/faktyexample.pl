figura(kwadrat,4).
figura(trojkat,3).
figura(trapez,4).
figura(pieciokat_foremny,5).
figura(szczesciokat_foremny,6).
figura(osmiokat_foremny,8).
figura(dziesieciokat_foremny,10).

wypisz(X):- figura(X, Œciany), Œciany=<5, write(X).
