% deletes last and first three elements from the list
delete_last_and_first_three(X, Z) :-
  delete_first_three(X, Y),
  delete_last_three(Y, Z).

delete_last_and_first_three_test :-
  delete_last_and_first_three([1, 2, 3, 4, 5, 6, 7], [4]),
  delete_last_and_first_three([1, 2, 3, 4, 5, 6, 7, 8], [4, 5]).
