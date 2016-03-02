belongs_to_2(X, List) :-
  [simple_lists_predicates],
  merge_two_arr(_, [X | _], List).

% gets last element of the list
last_element(List, El) :-
  merge_two_arr(_, [El], List).

% gets last element of the list
last_element_2([X | []], X).
last_element_2([_ | ListTail], El) :-
  last_element_2(ListTail, El).

% add element to the beginnign of the list
add_el(X, L, [X | L]).  % a little bit redundant

% deletes all elements from the list
delete_all(_, [], []).
delete_all(X, [X | Tail], TailProcessed) :-
  delete_all(X, Tail, TailProcessed).
delete_all(X, [LHead | LTail], [LHead | LTailProcessed]) :-
  LHead \= X,
  delete_all(X, LTail, LTailProcessed).

% deletes one element of all from the list
% if there is no even one element to delete returns false,
% probably because this:
% [Y | T] = [].
% returns false
delete_one(X, [X | Rest], Rest).
delete_one(X, [Y | Tail], [Y | Rest]) :-
	delete_one(X, Tail, Rest).

% insert one element somewhere in the list
insert_one(X, List, ListNew) :-
  delete_one(X, ListNew, List).

belongs_to_3(X, List) :-
  delete_one(X, List, _).
