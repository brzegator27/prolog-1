% deletes first three elements from the list
delete_first_three([_, _, _ | XT], XT).

delete_first_three_test :-
  delete_first_three([1, 2, 3], []),
  delete_first_three([1, 2, 3, 4], [4]).
