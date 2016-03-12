% puts last element of list on first place
shift_by_one_back(X, Y) :-
  shift_by_one_front(Y, X).

shift_by_one_back_test :-
  shift_by_one_back([1], [1]),
  shift_by_one_back([1, 2], [2, 1]),
  shift_by_one_back([1, 2, 3], [3, 1, 2]).
