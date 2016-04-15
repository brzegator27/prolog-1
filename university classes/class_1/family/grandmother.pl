grandmother(X, Y) :-
	woman(X),
	parent(X, Z),
	parent(Z, Y).
