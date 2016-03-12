% puts last element of list on first place
shift_by_one_front([], []).
shift_by_one_front([XH | XT], Merged) :-
  merge_two_arr(XT, [XH], Merged).

shift_by_one_front_test :-
  shift_by_one_front([], []),
  shift_by_one_front([1], [1]),
  shift_by_one_front([1, 2], [2, 1]),
  shift_by_one_front([1, 2, 3], [2, 3, 1]).
