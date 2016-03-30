% Copyright by Ivan Bratko
% Figure 4.5  A flight route planner and an example flight timetable.

flight(Place1, Place2, Day, Flightnum, Deptime, Arrtime) :-
   timetable(Place1, Place2, Flightlist),
   member(Deptime / Arrtime / Flightnum / Daylist , Flightlist),
   flyday(Day, Daylist).
