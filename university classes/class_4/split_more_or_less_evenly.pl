% splits list into two list of the same number
% of elements with an accuracy of one item
split_more_or_less_evenly([], [], []).
split_more_or_less_evenly([X], [X], []).
split_more_or_less_evenly([X_1, X_2 | XT], [X_1 | Y_1], [X_2 | Y_2]) :-
  split_more_or_less_evenly(XT, Y_1, Y_2).


split_more_or_less_evenly_test :-
  split_more_or_less_evenly([], [], []),
  split_more_or_less_evenly([1], [1], []),
  split_more_or_less_evenly([1, 2], [1], [2]),
  split_more_or_less_evenly([1, 2, 3], [1, 3], [2]),
  split_more_or_less_evenly([1, 2, 3, 4], [1, 3], [2, 4]),
  split_more_or_less_evenly([1, 2, 3, 4, 5], [1, 3, 5], [2, 4]),
  split_more_or_less_evenly([1, 2, 3, 4, 5, 6, 7, 8], [1, 3, 5, 7], [2, 4, 6, 8]).
