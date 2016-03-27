% unit tests of predicates

% to perform unit test just type:

% ?- [unit_tests].
% ?- unit_test.

% where "?-" is my console symbol on Windows

% when You write tests remember that
% predicate can return more than one result

% remember to make lack of test explicit

:- [header].

unit_test_family :-
  \+ current_predicate(birthdate_test/0),
  \+ current_predicate(child_test/0),
  \+ current_predicate(earnings_test/0),
  \+ current_predicate(fake_database_test/0),
  \+ current_predicate(husband_test/0),
  \+ current_predicate(person_exists_test/0),
  \+ current_predicate(queries_test/0),
  \+ current_predicate(salary_test/0),
  \+ current_predicate(wife_test/0).
