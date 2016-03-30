% Copyright by Ivan Bratko
% Figure 4.5  A flight route planner and an example flight timetable.

conc([], L, L).
conc([X | L1], L2, [X | L3]) :-
  conc(L1, L2, L3).
