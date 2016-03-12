% checks list's elements compose palindrome
palindrome([_]) :- true.
palindrome([X, X]) :- true.
palindrome([X_1, X_2 | XT]) :-
  merge_two_arr([Front], MiddleWithBack, [X_1, X_2 | XT]),
  merge_two_arr(Middle, [Back], MiddleWithBack),
  Front == Back,
  palindrome(Middle).

palindrome_test :-
  \+ palindrome([a, b]),
  \+ palindrome([a, l, a, b]),
  palindrome([a, l, a]),
  palindrome([m, a, d, a, m]).
