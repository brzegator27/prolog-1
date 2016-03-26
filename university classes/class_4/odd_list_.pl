% checks if number of list's elements is odd number
odd_list_([_ | XT]) :- even_list_(XT).

odd_list__test :-
  \+ odd_list_([1, 2]),
  odd_list_([1, 2, 3]).
