list_length([], 0).
list_length([_ | Y], Length) :-
  list_length(Y, TailLength),
  Length is 1 + TailLength.
