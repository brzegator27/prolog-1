brother(X, Y) :-
	parent(R, X),
	parent(R, Y),
	man(X),
	X \= Y.
