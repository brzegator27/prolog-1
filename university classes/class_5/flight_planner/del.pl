% Copyright by Ivan Bratko
% Figure 4.5  A flight route planner and an example flight timetable.

del(X, [X | L], L).
del(X, [Y | L], [Y | L1]) :-
  del(X, L, L1).
