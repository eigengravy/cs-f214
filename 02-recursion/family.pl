child(bridget,caroline). 
child(caroline,donna).
child(anne,bridget). 
child(bridget,caroline). 
child(caroline,donna). 
child(donna,emily).

descendent(X, X).
descendent(X, Y):-
    child(X, Z),
    descendent(Z, Y).