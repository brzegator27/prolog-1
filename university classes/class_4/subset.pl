% test whether second list is subset of another list
subset(_, []) :- true.
subset(X, [YH | YT]) :-
  merge_two_arr(Z, X_without_YH_End, X),
  merge_two_arr(X_without_YH_Begining, [YH], Z),
  merge_two_arr(X_without_YH_Begining, X_without_YH_End, X_without_YH),
  subset(X_without_YH, YT).

subset_test :-
  subset([], []),
  \+ subset([], [a]),
  subset([a, b, c], []),
  subset([a, b, c], [a]),
  subset([a, b, c], [a, b]),
  subset([a, b, c], [a, b, c]),
  \+ subset([a, b, c], [a, b, c, a]).
