fibonacci(0, 0).
fibonacci(1, 1).

fibonacci(No, Result) :-
  No > 1,
  Predecessor_1_no is No - 2,
  Predecessor_2_no is No - 1,
  fibonacci(Predecessor_1_no, Predecessor_1),
  fibonacci(Predecessor_2_no, Predecessor_2),
  Result is Predecessor_1 + Predecessor_2.
