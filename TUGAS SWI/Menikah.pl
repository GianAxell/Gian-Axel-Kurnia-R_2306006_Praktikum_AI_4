% Fakta
menikah(wati, andi).
anakKandung(wati, budi).
saudaraKembar(budi, andi).

% Aturan
is_saudaraKandung(X, Y) :-
    anakKandung(X, Z),
    anakKandung(Y, Z),
    X \= Y.

is_keponakan(Z, Y) :-
    anakKandung(Z, X),
    saudaraKembar(X, Y).

not(sah(menikah(Z, Y))) :-
    is_keponakan(Z, Y).
