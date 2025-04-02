menikah(wati, andi).
anakKandung(wati, budi).
saudaraKembar(budi, andi).

is_saudaraKandung(X, Y) :- anakKandung(Z, X), anakKandung(Z, Y), X \= Y.
is_saudaraKandung(X, Y) :- saudaraKembar(X, Y).
is_Keponakan(X, Y) :- anakKandung(Z, X), is_saudaraKandung(Z, Y).
not(sah(menikah(X, Y))) :- is_saudaraKandung(X, Y).
