% predicate checking if given value is element
% of the given list
belongs_to_(X, List) :-
  merge_two_arr(_, [X | _], List).

belongs_to__test :-
  \+ belongs_to_(a, []),
  belongs_to_(a, [a, b]),
  belongs_to_(b, [a, b]),
  \+ belongs_to_(c, [a]),
  \+ belongs_to_(c, [a, b]),
  \+ belongs_to_([], [a]).
