merge_two_arr([], X, X).
% merge_two_arr(X, [], X).  % this solves problem of not
                          % ending the program after request like
                          % :- merge_two_arr(Before, [5 | After], [1,2,3,4,5,6,7,8,9]).
                          % without this, You had to write '.' after
                          % first Prolog answer.
% ATTENTION!!! Upper conclusion is wrong. It works without this.
merge_two_arr([XH | XT], Y, [XH | Z]) :-
  merge_two_arr(XT, Y, Z).
