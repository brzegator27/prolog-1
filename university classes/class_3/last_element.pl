% gets last element of the list
last_element(List, El) :-
  merge_two_arr(_, [El], List).
