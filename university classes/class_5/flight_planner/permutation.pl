% Copyright by Ivan Bratko
% Figure 4.5  A flight route planner and an example flight timetable.

permutation([], []).
permutation(L, [X | P])  :-
  del(X, L, L1),
  permutation(L1, P).
