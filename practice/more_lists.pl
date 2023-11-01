delete(X, [X|T], T).
delete(X, [H|T], [H|T2]):- delete(X, T, T2).

permute([],[]).
permute(L,[X|P]):- delete(X,L,L1), permute(L1,P).

factorial(0,1).
factorial(N,F) :- N > 0, N1 is N-1, factorial(N1,F1), F is F1*N.

fib(0, 0).
fib(1, 1).
fib(N, F):- N > 1, N1 is N-1, N2 is N-2, fib(N1, F1), fib(N2, F2), F is F1 + F2.

gFibSeq(0, A, [0|A]).
gFibSeq(N, A, F):- N >= 0, N1 is N-1, fib(N, F1), gFibSeq(N1, [F1|A], F).

fibSeq(N,F):- gFibSeq(N, [], F).