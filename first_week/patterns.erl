-module (patterns).
-export ([firstXOR/2, secondXOR/2, thirdXOR/2, simonXOR/2, simplerSimonXOR/2, maxThree/3, howManyEqual/3]).

simonXOR(X,X)->
    false;
simonXOR(_,_)->
    true.

simplerSimonXOR(true,X)->
    not(X);
simplerSimonXOR(false,X)->
    X.

firstXOR(X,Y)->
    X == not Y.

secondXOR(X,Y) ->
    X=/=Y.

thirdXOR(X,Y)->
    (X and not Y) or (Y and not X).

maxThree(X,Y,Z)->
    max(X,(max(Y,Z))).

howManyEqual(X,X,X)->
    3;
howManyEqual(X,X,_)->
    2;
howManyEqual(X,_,X)->
    2;
howManyEqual(_,X,X)->
    2;
howManyEqual(_X,_Y,_Z)->
    0.
    
