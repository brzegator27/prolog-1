% checks if number of list's elements is odd number
odd_list([_]) :- true.
odd_list([_, _ | XT]) :-
  odd_list(XT).

odd_list_test :-
  \+ odd_list([1, 2]),
  odd_list([1, 2, 3]).
