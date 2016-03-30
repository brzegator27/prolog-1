% Copyright by Ivan Bratko
% Figure 4.5  A flight route planner and an example flight timetable.

member(X, [X | _]).
member(X, [_ | L]) :-
   member(X, L).
