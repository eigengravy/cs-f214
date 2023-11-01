% Member

member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

% Insert

insert(X, L, [X|L]).

% Concat

concat([], L, L).
concat([X|L1], L2, [X|L3]) :- concat(L1, L2, L3).

% Length

length1([], 0).
length1([_|T], N):- length1(T, N1), N is N1+1.

% Last

last([X],X).
last([_|T], X) :- last(T, X).

% First

first([X|_], X).

% Sorted
is_sorted([_]).
is_sorted([X,Y|T]) :- X =< Y, is_sorted([Y|T]).

% Even-Odd

even([]).
even([_|L]) :- odd(L).
odd([_|L]) :- even(L).

% Append

append([],L,L).
append([H|T],L,[H|R]):- append(T,L,R).

% Prefix-Suffix

prefix(P,L):- append(P, _, L).
suffix(S,L):- append(_, S, L).

% Sublist

sublist1(X,L):- suffix(S,L), prefix(X,S).
sublist2(X,L):- prefix(P, L), suffix(X, P).

% Reverse (naive using append)

reverse1([], []).
reverse1([H|T], L) :- reverse1(T, R), append(R, [H], L).

% Reverse (optimized using accumulator)

x_reverse([], A, A).
x_reverse([H|T], A, R):- x_reverse(T, [H|A], R).
reverse2(L,R):- x_reverse(L, [], R).

% Permuation

takeout(X,[X|R],R).  
takeout(X,[F|R],[F|S]) :- takeout(X,R,S).

perm([X|Y],Z) :- perm(Y,W), takeout(X,Z,W).  
perm([],[]).

% Flatten

flatten1([],[]).
flatten1([H|T], R):- flatten1(H, H1), flatten1(T, T1), append(H1, T1, R).
flatten1([H|T1],[H|T2]):- H \= [], H \= [_|_], flatten1(T1, T2).





