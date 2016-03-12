% deletes one element of all from the list
% if there is no even one element to delete returns false,
% probably because this:
% [Y | T] = [].
% returns false
delete_one(X, [X | Rest], Rest).
delete_one(X, [Y | Tail], [Y | Rest]) :-
	delete_one(X, Tail, Rest).
