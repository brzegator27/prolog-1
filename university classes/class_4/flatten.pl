% change nested lists into flat list
flatten([], []).
% flatten([X], X).
% flatten(X, [X]) :-
% flatten([[XH] | XT], [XH]).
% flatten([XH | XT], [XH]).

% flatten([X], [X]) :-
%   \+ flatten(X, _).

% flatten([[X]], Y) :-
%   flatten([X], Y).


flatten([X_1, X_2 | XT], Flatten_list) :-
  flatten([X_1], XH_flatten),
  flatten([X_2 | XT], XT_flatten),
  merge_two_arr(XH_flatten, XT_flatten, Flatten_list).

flatten(X, [X]) :-
  \+ compound(X).

flatten([X], Y) :-
  compound([X]),
  flatten(X, Y).

flaten_2([X], [X]) :-
  put(a).
flaten_2(X, [X]) :-
  put(b).

flatten_3([], []).
% flatten_3([X | []], [X]).
flatten_3([[X] | Y], ZF) :-
  flatten_3(X, XF),
  flatten_3(Y, YF),
  merge_two_arr(XF, YF, Z),
  flatten_3(Z, ZF).
flatten_3([X | [Y]], ZF) :-
  flatten_3(X, XF),
  flatten_3(Y, YF),
  merge_two_arr(XF, YF, Z),
  flatten_3(Z, ZF).

flatten_test :-
  flatten([[a], b, c], [a, b, c]),
  flatten([[a], [b, [d]], c], [a, b, d, c]),
  flatten([a,b,c], [a, b, c]),
  flatten(a, [a]).
