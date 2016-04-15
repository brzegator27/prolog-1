% unit tests of predicates

% to perform unit test just type:

% ?- [unit_tests].
% ?- unit_test.

% where "?-" is my console symbol on Windows

% when You write tests remember that
% predicate can return more than one result

% remember to make lack of test explicit

:- [header].

unit_test_class_1_family :-
  \+ current_predicate(ancestor_test/0),
  \+ current_predicate(brother_test/0),
  \+ current_predicate(descendant_test/0),
  \+ current_predicate(fake_database_test/0),
  \+ current_predicate(father_test/0),
  \+ current_predicate(grandfather_test/0),
  \+ current_predicate(grandmother_test/0),
  \+ current_predicate(mother_test/0),
  \+ current_predicate(sister_test/0),
  \+ current_predicate(queries_class_1_family_test/0).
