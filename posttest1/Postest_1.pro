predicates
orang(symbol,symbol) - nondeterm (o,o)
namanya(symbol) - nondeterm (o)
ini(symbol) - nondeterm (o)
suka(symbol,symbol) - nondeterm (i,i)
yang(symbol) - nondeterm (i)

clauses
orang(X,Y):-
namanya(X),
ini(Y),
suka(X,Y),
yang(Y).

namanya(gino).
namanya(jordi).
namanya(fikry).
namanya(ferry).

ini(pegawai).
ini(bos).
ini(polisi).
ini(tentara).

suka(gino, pegawai).
suka(jordi, bos).
suka(fikry, polisi).
suka(ferry, tentara).


yang(bos).

goal
orang(Namaku, Suatu_saat_akan_jadi).


