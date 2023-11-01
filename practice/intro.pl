woman(mia).
woman(jody). 
woman(yolanda). 
playsAirGuitar(jody).

happy(yolanda). 
listens2Music(mia). 
listens2Music(yolanda):-  happy(yolanda). 
playsAirGuitar(mia):-  listens2Music(mia). 
playsAirGuitar(yolanda):-  listens2Music(yolanda).

happy(vincent).
listens2Music(vincent).
listens2Music(butch).
playsAirGuitar(vincent):- 
    listens2Music(vincent), 
    happy(vincent).

woman(mia). 
woman(jody). 
woman(yolanda).

man(pumpkin).

loves(vincent,mia). 
loves(marsellus,mia). 
loves(pumpkin,honey_bunny). 
loves(honey_bunny,pumpkin).

loves(vincent,mia). 
loves(marsellus,mia). 
loves(pumpkin,honey_bunny). 
loves(honey_bunny,pumpkin). 

jealous(X,Y):-  
    loves(X,Z),  
    loves(Y,Z).

parent( pam, bob). 
parent( tom, bob).
parent( tom, liz).
parent( bob, ann).
parent( bob, pat).
parent( pat, jim).

has_child(X) :- 
    parent(X, Y).