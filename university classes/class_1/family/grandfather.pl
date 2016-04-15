grandfather(X, Y) :-
	man(X),
	parent(X, Z),
	parent(Z, Y).
