write_down(Label, VariableValue) :-
  write(Label), write(': '), write(VariableValue), nl.

% shorter name:
w_d(Label, VariableValue) :-
  write_down(Label, VariableValue).

arith_test :-
  X is 2 + 2,
  w_d('X', X),
  Y is 2.5 + (4 / 2),
  w_d('Y', Y),
  Z is 2 + 0.001,
  w_d('Z', Z).

arith_test_interesting :-
  X_0 is 2 + 2,   w_d('X_0 is 2 + 2', X_0),
  X_1 is 2 * 2,   w_d('X_1 is 2 * 2', X_1),
  X_2 is 4 / 2,   w_d('X_2 is 4 / 2', X_2),
  X_3 is 4 / 3,   w_d('X_3 is 4 / 3', X_3),
  write('Now look at this: (!): '), nl,
  \+ X_0 is 4 / 3,   w_d('\\+ X_0 is 4 / 3', X_0), % interesting behaviour
  write('And why it returns false!?'), nl,
  write('Maybe in one predicate variable can be
  assigned to only once and for the first
  assignment returns true, and for the others false?'), nl,
  write('Remember, in _predicate_,
  You can\'t check it in console'), nl,
  X_4 is 4 // 3,   w_d('X_4 is 4 // 3', X_4).

:- A is 3.              % OK
% :- B is A + 4.          % error
:- A is 3, B is A + 4.  % OK

arith_test_operators :-
  write('Look, which returns true
  - You must look at predicate body. '), nl,
  2 + 5 \= 3 + 4,     % interesting
  \+ 2 + 5 \= 2 + 5,  % interesting
  2 + 5 =:= 2 + 5,
  2 + 5 =:= 3 + 4.

arith_test_interesting_second :-
  X = Y,
  X = 2,
  write(Y).
