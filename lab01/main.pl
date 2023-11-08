mygrandchildren(X,Y):-parent(Y,Z),parent(Z,X).

mymember(X,[X|_]).
mymember(X,[_|T]):-mymember(X,T).

mysubset([],_).
mysubset([H|T],L):-mymember(H,L),mysubset(T,L).

mylast(L,[L]).
mylast(L,[_|T]):-mylast(L,T).

myfirst(F,[F|_]).

mytwice([],[]).
mytwice([H|T1],[H,H|T2]):-mytwice(T1,T2).