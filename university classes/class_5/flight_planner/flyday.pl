% Copyright by Ivan Bratko
% Figure 4.5  A flight route planner and an example flight timetable.

flyday(Day, Daylist) :-
   member(Day, Daylist).
flyday(Day, alldays) :-
   member(Day, [mo, tu, we, th, fr, sa, su]).
