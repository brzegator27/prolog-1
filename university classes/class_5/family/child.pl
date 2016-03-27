% predicate for getting child
child(X) :-
	family(_, _, Children),
	belongs_to_(X, Children).
