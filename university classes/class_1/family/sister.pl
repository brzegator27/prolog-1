sister(X, Y) :-
	parent(R, X),
	parent(R, Y),
	woman(X),
	X \= Y.
