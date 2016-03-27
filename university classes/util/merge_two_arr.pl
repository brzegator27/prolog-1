merge_two_arr([], X, X).
% merge_two_arr(X, [], X).  % this solves problem of not
                          % ending the program after request like
                          % :- merge_two_arr(Before, [5 | After], [1,2,3,4,5,6,7,8,9]).
                          % without this, You had to write '.' after
                          % first Prolog answer.
% ATTENTION!!! Upper conclusion is wrong. It works without this.
merge_two_arr([XH | XT], Y, [XH | Z]) :-
  merge_two_arr(XT, Y, Z).

merge_two_arr_test :-
  merge_two_arr([], [], []),
  merge_two_arr([], [a], [a]),
  merge_two_arr([a], [], [a]),
  merge_two_arr([a], [b], [a, b]),
  \+ merge_two_arr([a], [b], [b, a]),
  merge_two_arr([a, b, c], [d, e], [a, b, c, d, e]),
  merge_two_arr([a, b], [], [a, b]).
