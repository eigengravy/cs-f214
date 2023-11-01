numeral(0).
numeral(succ(X)) :- numeral(X).

greater_than(succ(0), 0).
greater_than(succ(X), Y):-
    greater_than(X, Y).
greater_than(succ(X), succ(Y)) :-
    greater_than(X, Y).