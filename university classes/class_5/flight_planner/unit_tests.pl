% unit tests of predicates

% to perform unit test just type:

% ?- [unit_tests].
% ?- unit_test.

% where "?-" is my console symbol on Windows

% when You write tests remember that
% predicate can return more than one result

% remember to make lack of test explicit

:- [header].

unit_test_flight_planner :-
  \+ current_predicate(conc_test/0),
  \+ current_predicate(del_test/0),
  \+ current_predicate(deptime_test/0),
  \+ current_predicate(fake_database_test/0),
  \+ current_predicate(flight_test/0),
  \+ current_predicate(flyday_test/0),
  \+ current_predicate(member_test/0),
  \+ current_predicate(permutation_test/0),
  \+ current_predicate(queries_test/0),
  \+ current_predicate(route_test/0),
  \+ current_predicate(transfer_test/0).
