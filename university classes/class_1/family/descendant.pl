descendant(X, Y) :-
	parent(Y, X).

descendant(Z, X) :-
	parent(Y, Z),
	descendant(Y, X).
