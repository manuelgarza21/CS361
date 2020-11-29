likes(john,mary).
likes(mary,sue).
likes(mary,tom).
f(0,1).
f(X,5) :- X>0.
f(0,1) :- !.
f(X,5) :-.
g(X,Y) :- Y is 2*X.
speaks(allen,russian).
speaks(bob,english).
speaks(mary,russian).
speaks(mary,english).
talkswith(Person1,Person2):-speaks(Person1,L),speaks(Person2,L), Person1 \= Person2.
factorial(0,1).
factorial(N,Result) :- N>0, M is N-1, factorial(M,SubResult), Result is N*SubResult.
fib(0,1).
fib(1,1).
fib(N,R) :- N>1, N1 is N-1, N2 is N-2, fib(N1,R1), fib(N2,R2), R is R1+R2.
member(X,[X|_]).
member(X,[_|Y]) :- member(X,Y).
append([],X,X).
append1([H|T],Y,[H|Z]) :- append1(T,Y,Z).
rectangleperimeter(H, W, P) :- P is 2 * H + 2 * W.