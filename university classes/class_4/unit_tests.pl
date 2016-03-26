% unit tests of predicates

% to perform unit test just type:

% ?- [unit_tests].
% ?- unit_test.

% where "?-" is my console symbol on Windows

% when You write tests remember that
% predicate can return more than one result

:- [header].

unit_test :-
  delete_first_three_test,
  delete_last_three_test,
  delete_last_and_first_three_test,
  digits_to_words_test,
  even_list__test,
  even_list_test,
  flatten_test,
  merge_two_arr_test,
  odd_list__test,
  odd_list_test,
  palindrome_test,
  shift_by_one_back_test,
  shift_by_one_front_test,
  digits_to_words_test,
  split_more_or_less_evenly_test,
  subset_test.
