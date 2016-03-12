% deletes last three elements from the list
delete_last_three([_, _, _], []).
delete_last_three([XH | XT], [XH | XWithDeletedLastTree]) :-
  delete_last_three(XT, XWithDeletedLastTree).

delete_last_three_test :-
  delete_last_three([1, 2, 3], []),
  delete_last_three([1, 2, 3, 4], [1]).
