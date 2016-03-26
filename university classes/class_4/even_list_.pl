% checks if number of list's elements is even number
even_list_([]).
even_list_([_ | XT]) :- odd_list_(XT).

even_list__test :-
  even_list_([1, 2]),
  \+ even_list_([1, 2, 3]).
