% unit tests of predicates

% to perform unit test just type:

% ?- [unit_tests].
% ?- unit_test.

% where "?-" is my console symbol on Windows

% when You write tests remember that
% predicate can return more than one result

% remember to make lack of test explicit

:- [header].

unit_test :-
  belongs_to__test,
  delete_first_three_test,
  delete_last_three_test,
  delete_last_and_first_three_test,
  digits_to_words_test,
  even_list__test,
  even_list_test,
  flatten_test,
  make_change_money_test,
  merge_two_arr_test,
  odd_list__test,
  odd_list_test,
  palindrome_test,
  shift_by_one_back_test,
  shift_by_one_front_test,
  \+ current_predicate(solve_maze_test/0), % make lack of test explicit
  \+ current_predicate(solve_pyramid_test/0), % make lack of test explicit
  split_more_or_less_evenly_test,
  subset__test,
  subset_test.
