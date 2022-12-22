--1. Write a program that finds the maximum of a simple list of numbers.
maxfun([X],X).
maxfun([X|Y],X):- maxfun(Y,Z), X >= Z.
maxfun([X|Y],N):- maxfun(Y,N), N > X.

--2. Write a program that succeeds if the intersection of two given list parameters is empty.
iempty([_],[_]).
iempty(A,B):-intersection(A,B,[]).

{-3. Write a program that returns a list containing the union of the elements of two given lists.
    Assume the list represents sets (i.e. unique elements) and the union returns unique elements.-}
listunion([],A,A).
listunion([A|B],C,D):- member(A,C),!,listunion(B,C,D).
listunion([A|B],C,[A|D]):- listunion(B,C,D).

--4. Write a program that returns the final element of a list
final(X,[X]).
final(_,[]):-write('No elements in list').
final(X,[_|Z]):- final(X,Z).
