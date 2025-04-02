lakiLaki(david).
lakiLaki(jack).
lakiLaki(john).
lakiLaki(ray).
lakiLaki(peter).

perempuan(amy).
perempuan(karen).
perempuan(susan).
perempuan(liza).
perempuan(mary).

suamiIstri(david, amy).
suamiIstri(jack, karen).
suamiIstri(john, susan).

orangTua(david, john).
orangTua(amy, john).
orangTua(david, liza).
orangTua(amy, liza).
orangTua(jack, ray).
orangTua(karen, ray).
orangTua(jack, susan).
orangTua(karen, susan).
orangTua(john, peter).
orangTua(susan, peter).
orangTua(john, mary).
orangTua(susan, mary).

ayah(X, Y) :- lakiLaki(X), orangTua(X, Y).
ibu(X, Y) :- perempuan(X), orangTua(X, Y).
saudara(X, Y) :- orangTua(Z, X), orangTua(Z, Y), X \= Y.
kakek(X, Y) :- lakiLaki(X), orangTua(X, Z), orangTua(Z, Y).
nenek(X, Y) :- perempuan(X), orangTua(X, Z), orangTua(Z, Y).
anak(Y, X) :- orangTua(X, Y).
cucu(X, Y) :- orangTua(Y, Z), orangTua(Z, X).
pasangan(X, Y) :- suamiIstri(X, Y) ; suamiIstri(Y, X).
