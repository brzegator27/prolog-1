% unit tests of predicates

% to perform unit test just type:

% ?- [unit_tests].
% ?- unit_test.

% where "?-" is my console symbol on Windows

% when You write tests remember that
% predicate can return more than one result

% remember to make lack of test explicit

:- [header].

unit_test_util :-
  belongs_to__test,
  merge_two_arr_test.
