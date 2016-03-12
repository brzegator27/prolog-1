% checks if in list L2 exists such sublist
% obtained by triming some or none elements
% from beginning and end, that is equal to L1
list_belongs_to_list(L1, L2) :-
  merge_two_arr(Y, _, L2),
  merge_two_arr(_, L1, Y).

list_belongs_to_list_test :-
  \+ list_belongs_to_list(a, [a, b, c]),
  list_belongs_to_list([a], [a, b, c]),
  list_belongs_to_list([b, c],[a, b, c, d, e]).
