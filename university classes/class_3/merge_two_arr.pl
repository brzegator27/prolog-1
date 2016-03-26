merge_two_arr([], X, X).
% merge_two_arr(X, [], X).  % this solves problem of not
                          % ending the program after request like
                          % :- merge_two_arr(Before, [5 | After], [1,2,3,4,5,6,7,8,9]).
                          % without this, You had to write '.' after
                          % first Prolog answer.
% ATTENTION!!! Upper conclusion is wrong. It works without this.
merge_two_arr([XH | XT], Y, [XH | Z]) :-
  merge_two_arr(XT, Y, Z).
% another, probably worser, apporach:
% merge_two_arr([XH | XT], Y, Z) :-
%   merge_two_arr(XT, Y, Rest),
%   Z = [XH | Rest].


merge_two_arr_case_study :-
  merge_two_arr([a, b], [c, d], X),
  merge_two_arr([a, b], X, [c, d]),
  merge_two_arr([a, b], X, [a, b, c, d]),

  merge_two_arr(A, B, [a, b, c, d, e]),

  merge_two_arr([1, 2, 3], [a, b, c], X),
  merge_two_arr([1, 2, 3], [a(e), b(f), c(d, g)], X),

  merge_two_arr(Before, [5 | After], [1,2,3,4,5,6,7,8,9]),
  merge_two_arr(_, [A, 5, B | _], [1,2,3,4,5,6,7,8,9]),
  merge_two_arr(A, [x, x, x | _], [a,b,x,x,c,x,x,x,d,e]).
