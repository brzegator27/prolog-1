% checks if number of list's elements is even number
even_list([_, _]) :- true.
even_list([_, _ | XT]) :-
  even_list(XT).

even_list_test :-
  even_list([1, 2]),
  \+ even_list([1, 2, 3]).
