% a

append([],L,L).
append([H|T],L,[H|R]):- append(T,L,R).

reverse([], []).
reverse([H|T], L) :- reverse(T, R), append(R, [H], L).

% b

ackermann(0, Y, Z):- Z is Y+1.
ackermann(X, 0, Z):- X>0, X1 is X-1, ackermann(X1, 1, Z).
ackermann(X, Y, Z):- X>0, Y>0, X1 is X-1, Y1 is Y-1, ackermann(X, Y1, W), ackermann(X1, W, Z).

% c

sublist(X,L):- append(_, S, L), append(X, _, S).

% d

bet(N, M, K) :- N =< M, K = N.
bet(N, M, K) :- N < M, N1 is N+1, bet(N1, M, K).

triplets(X, Y, Z) :-
    bet(0, 9, X),
    bet(0, 9, Y),
    bet(1, 9, Z),
    X \= Y, Y \= Z, X \= Z, 
    10*X*Y =:= 9*X*Z + Y*Z. 

% e


